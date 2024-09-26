/**
 * JetBrains Space Automation
 * This Kotlin script file lets you automate build activities
 * For more info, see https://www.jetbrains.com/help/space/automation.html
 */

import java.time.LocalDate

job("Build Web Base Image") {
    startOn {
        gitPush {
            pathFilter {
                +"Dockerfile.web.base"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
        }
    }

    host("Build and push web base image") {
        dockerBuildPush {
            // by default, the step runs not only 'docker build' but also 'docker push'
            // to disable pushing, add the following line:
            // push = false

            // path to Docker context (by default, context is working dir)
            // context = "docker"
            // path to Dockerfile relative to the project root
            // if 'file' is not specified, Docker will look for it in 'context'/Dockerfile
            file = "Dockerfile.web.base"
            // build-time variables
            // args["HTTP_PROXY"] = "http://10.20.30.2:1234"
            // image labels
            // labels["vendor"] = "mycompany"
            // to add a raw list of additional build arguments, use
            // extraArgsForBuildCommand = listOf("...")
            // to add a raw list of additional push arguments, use
            // extraArgsForPushCommand = listOf("...")
            // image tags
            tags {
                // use current job run number as a tag - '0.0.run_number'
                +"50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:{{ VERSION_NUMBER }}"
                +"50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:latest"
            }
        }
    }
}

job("Build Android Base Image") {
    startOn {
        gitPush {
            pathFilter {
                +"Dockerfile.android.base"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
        }
    }

    host("Build and push android base image") {
        dockerBuildPush {
            // by default, the step runs not only 'docker build' but also 'docker push'
            // to disable pushing, add the following line:
            // push = false

            // path to Docker context (by default, context is working dir)
            // context = "docker"
            // path to Dockerfile relative to the project root
            // if 'file' is not specified, Docker will look for it in 'context'/Dockerfile
            file = "Dockerfile.android.base"
            // build-time variables
            // args["HTTP_PROXY"] = "http://10.20.30.2:1234"
            // image labels
            // labels["vendor"] = "mycompany"
            // to add a raw list of additional build arguments, use
            // extraArgsForBuildCommand = listOf("...")
            // to add a raw list of additional push arguments, use
            // extraArgsForPushCommand = listOf("...")
            // image tags
            tags {
                // use current job run number as a tag - '0.0.run_number'
                +"50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:{{ VERSION_NUMBER }}"
                +"50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:latest"
            }
        }
    }
}


job("Build and publish bundle to web track") {
    startOn {
        gitPush {
            enabled = true
            anyBranchMatching {
                +"release-*"
                +"master"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
        }
    }

    container("Start Deployment", image = "amazoncorretto:17-alpine") {
        env["SLACK_OAUTH_BOT_TOKEN"] = Secrets("SLACK_OAUTH_BOT_TOKEN")

        kotlinScript { api ->
            api.space().projects.automation.deployments.start(
                    project = api.projectIdentifier(),
                    targetIdentifier = TargetIdentifier.Key("evo-on-50gramx-com"),
                    version = api.parameters["VERSION_NUMBER"],
                    // automatically update deployment status based on a status of a job
                    syncWithAutomationJob = true
            )
        }
    }

    container(displayName = "Release - Web - Site", image = "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:latest") {
        env["FIREBASE_TOKEN"] = Secrets("FIREBASE_TOKEN")
        env["PACKGAGES_READ_TOKEN"] = Secrets("ETHOS_APP_SERVICE_CONTRACTS_PACKGAGES_READ_TOKEN")

        shellScript {
            content = """
          	pwd
          	ls -l
            npm -v
           	npm install -g n 
            n stable
          cd fifty_gramx && flutter clean && dart pub token add https://dart.pkg.jetbrains.space/50gramx/p/main/dart-delivery/ --env-var=PACKGAGES_READ_TOKEN && flutter pub get && flutter pub cache repair && flutter build web --dart-define=flavor=50.ethos.site --release && firebase deploy --only hosting:default --token ${"$"}FIREBASE_TOKEN
            # Retrieve commit messages using Git log command
            # Output commit messages to console
            echo "Commit Messages:"
            git log -n 3 --format=%B
          """
        }
    }

    container(displayName = "Release - Web - App", image = "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:latest") {
        env["FIREBASE_TOKEN"] = Secrets("FIREBASE_TOKEN")
        env["PACKGAGES_READ_TOKEN"] = Secrets("ETHOS_APP_SERVICE_CONTRACTS_PACKGAGES_READ_TOKEN")

        shellScript {
            content = """
          	pwd
          	ls -l
            npm -v
           	npm install -g n 
            n stable
            cd fifty_gramx && flutter clean && dart pub token add https://dart.pkg.jetbrains.space/50gramx/p/main/dart-delivery/ --env-var=PACKGAGES_READ_TOKEN && flutter pub get && flutter pub cache repair && flutter build web --release && firebase deploy --only hosting:seventy-zero-ethos-nodes --token ${"$"}FIREBASE_TOKEN
            # Retrieve commit messages using Git log command
            # Output commit messages to console
            echo "Commit Messages:"
            git log -n 3 --format=%B
          """
        }
    }

}


job("Build and publish bundle to android internal track") {
    startOn {
        gitPush {
            enabled = true
            anyBranchMatching {
                +"release-*"
                +"master"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
        }
    }

    container("Build and publish", "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:latest") {
        env["GOOGLE_SA_KEY"] = Secrets("GOOGLE_SERVICE_ACCOUNT_KEY")
        env["KEY_STORE"] = Secrets("PLAY_APP_SIGNING_UPLOAD_KEY")
        env["KEY_STORE_PASSWORD"] = Secrets("PLAY_KEY_STORE_PASSWORD")
        env["KEY_PASSWORD"] = Secrets("PLAY_KEY_PASSWORD")
        env["KEY_ALIAS"] = Params("PLAY_KEY_ALIAS")
        env["PACKGAGES_READ_TOKEN"] = Secrets("ETHOS_APP_SERVICE_CONTRACTS_PACKGAGES_READ_TOKEN")

        shellScript {
            content = """
                echo Get private signing key...
                echo ${'$'}KEY_STORE > upload_key.hex
                xxd -plain -revert upload_key.hex  upload_key.jks
                
                echo Get Google service account key...
                echo ${'$'}GOOGLE_SA_KEY > google_sa_key.hex
                xxd -plain -revert google_sa_key.hex  google_sa_key.json
               
                echo Build and publish AAB...
                flutter doctor -v
                ls -l -h
                
                echo ${'$'}VERSION_NUMBER
                echo "breaker"
                echo {{ VERSION_NUMBER }}
                export VERSION_NUMBER={{ VERSION_NUMBER }}
                echo "Switch to 50GRAMx Directory"
                cd fifty_gramx
                
                echo "fix dependencies"
                flutter pub get && flutter pub cache repair
                dart pub token add https://dart.pkg.jetbrains.space/50gramx/p/main/dart-delivery/ --env-var=PACKGAGES_READ_TOKEN
                

                echo "Build the app bundle"
                flutter build appbundle
                
                echo "Check Release"
                ls build/app/outputs/bundle/release/app-release.aab
                
                echo "Switch to Android Directory"
                pwd
                cd android
                pwd 
                
                echo "Deploy"
                export LC_ALL=en_US.UTF-8                                                    
                export LANG=en_US.UTF-8
                fastlane deploy
                
            """
        }
    }
}

job("Build and publish bundle to iOS internal track") {
    startOn {
        gitPush {
            enabled = false
            anyBranchMatching {
                +"release-*"
                +"master"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
            api.parameters["BUILD_NUMBER"] = "$currentExecution"
        }
    }

    host("Build and publish") {
        env["SSH_CONNECT_AMITKUMARKHETAN15_KEY"] = Secrets("SSH_CONNECT_AMITKUMARKHETAN15_KEY")
        env["SSH_CONNECT_AMITKUMARKHETAN15_SECURITY"] = Secrets("SSH_CONNECT_AMITKUMARKHETAN15_SECURITY")
        env["FASTLANE_USER"] = Params("FASTLANE_USER")
        env["FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD"] = Secrets("FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD")
        

        shellScript {
            content = """
                echo Get amitkumarkhetan15 SSH key...
                apt-get install -y xxd
                echo ${'$'}SSH_CONNECT_AMITKUMARKHETAN15_KEY > id_rsa.hex
                xxd -plain -revert id_rsa.hex  ~/.ssh/id_rsa
                chmod 600 ~/.ssh/id_rsa

                echo Build IPA...
                export BUILD_COMMAND="source ~/.zshrc; cd /opt/ethos/data/automation/eapp-hybrid-dart/fifty_gramx/ios; git checkout master; git pull; security unlock-keychain -p ${'$'}SSH_CONNECT_AMITKUMARKHETAN15_SECURITY login.keychain; export FASTLANE_USER=${'$'}FASTLANE_USER; export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD=${'$'}FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD; export VERSION_NUMBER={{ VERSION_NUMBER }}; export BUILD_NUMBER={{ BUILD_NUMBER }}; fastlane beta;"
                echo ${'$'}BUILD_COMMAND
                ssh -o BatchMode=yes amitkumarkhetan15@host.docker.internal ${'$'}BUILD_COMMAND
            """
        }

        requirements {
            workerTags("macos-pool")
            workerTags("amitkumarkhetan15-user")
        }
    }
}

job("Build and publish EthosNodes MacOS Distributable App") {
    startOn {
        gitPush {
            enabled = true
            anyBranchMatching {
                +"release-*"
                +"master"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
            api.parameters["BUILD_NUMBER"] = "$currentExecution"
        }
    }

    host("Build and publish") {
        env["SSH_CONNECT_AMITKUMARKHETAN15_KEY"] = Secrets("SSH_CONNECT_AMITKUMARKHETAN15_KEY")
        env["SSH_CONNECT_AMITKUMARKHETAN15_SECURITY"] = Secrets("SSH_CONNECT_AMITKUMARKHETAN15_SECURITY")
        env["FASTLANE_USER"] = Params("FASTLANE_USER")
        env["FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD"] = Secrets("FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD")
        

        shellScript {
            content = """
                echo "Step 1: Installing xxd..."
                apt-get install -y xxd
                
                # Debugging: Print current directory
                echo "Step 2: Current Directory: $(pwd)"

                # Create the .ssh directory in the current working directory
                echo "Step 3: Creating .ssh directory..."
                mkdir -p ~/.ssh
                ls -la ~/.ssh

                # Save the SSH key hex data to a file
                echo "Step 4: Saving SSH key hex data to id_rsa.hex..."
                echo ${'$'}SSH_CONNECT_AMITKUMARKHETAN15_KEY > id_rsa.hex
                
                # Debugging: Check if id_rsa.hex was created
                echo "Step 5: Checking id_rsa.hex file..."
                ls -la id_rsa.hex
                
                # Convert the hex data to a binary SSH key and place it in ~/.ssh
                echo "Step 6: Converting hex data to SSH key..."
                xxd -plain -revert id_rsa.hex  ~/.ssh/id_rsa

                # Debugging: Check if the id_rsa file was created
                echo "Step 7: Checking ~/.ssh/id_rsa file..."
                ls -la ~/.ssh/id_rsa

                # Set correct permissions for the SSH key
                echo "Step 8: Setting permissions for SSH key..."
                chmod 600 ~/.ssh/id_rsa

                # Debugging: Verify permissions
                echo "Step 9: Verifying ~/.ssh permissions..."
                ls -la ~/.ssh

                # Testing SSH connection before running the command
                echo "Step 10: Testing SSH connection..."
                ssh -o BatchMode=yes mac@host.docker.internal 'echo "SSH connection successful!"' || { echo "SSH connection failed!"; exit 1; }

                echo "Step 11: Building macos app..."
                export BUILD_COMMAND="
                    echo 'Starting build process...';

                    echo 'Sourcing .zshrc...';
                    source ~/.zshrc;

                    echo 'Changing directory to macOS project...';
                    cd /Users/mac/Documents/Projects/eapp-hybrid-dart/fifty_gramx/macos;

                    echo 'Checking out master branch...';
                    git checkout master;

                    echo 'Pulling latest changes from origin...';
                    git pull;

                    echo 'Unlocking keychain...';
                    security unlock-keychain -p ${'$'}SSH_CONNECT_AMITKUMARKHETAN15_SECURITY login.keychain;

                    echo 'Setting environment variables...';
                    export FASTLANE_USER=${'$'}FASTLANE_USER;
                    export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD=${'$'}FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD;
                    export VERSION_NUMBER={{ VERSION_NUMBER }};
                    export BUILD_NUMBER={{ BUILD_NUMBER }};

                    echo 'Running Fastlane build...';
                    which fastlane;
                    fastlane --version;
                    printenv;
                    fastlane build;
                "
                
                # Debugging: Output the command that will be run
                echo "Step 12: SSH Build Command: ${'$'}BUILD_COMMAND"

                # Run the build command via SSH
                ssh -o BatchMode=yes mac@host.docker.internal ${'$'}BUILD_COMMAND
            """
        }

        requirements {
            workerTags("macos-pool")
            workerTags("amitkumarkhetan15-user")
        }
    }
}


job("Build and publish bundle to windows desktop track") {
    startOn {
        gitPush {
            enabled = true
            anyBranchMatching {
                +"release-*"
                +"master"
                +"features*"
            }
        }
    }

    // To check a condition, basically, you need a kotlinScript step
    host(displayName = "Setup Version") {
        kotlinScript { api ->
            // Get the current year and month
            val currentYear = (LocalDate.now().year % 100).toString().padStart(2, '0')
            val currentMonth = LocalDate.now().monthValue.toString()

            // Get the execution number from environment variables
            val currentExecution = System.getenv("JB_SPACE_EXECUTION_NUMBER")

            // Set the VERSION_NUMBER parameter
            api.parameters["VERSION_NUMBER"] = "$currentYear.$currentMonth.$currentExecution"
        }
    }

    host("Build and publish") {
        env["MSIX_CERTIFICATE"] = Secrets("MSIX_CERTIFICATE")
        env["MSIX_CERTIFICATE_PASSWORD"] = Secrets("MSIX_CERTIFICATE_PASSWORD")

        shellScript {
            content = """

                echo "warning: if new packages are installed, they might create their seperate dll files"
                echo "these new generated dll files must be added to the inno script manually, or the installation will fail"
                echo "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\ethos_node_desktop_windows_inno_script.iss"

                echo "1. delete the release folder data"
                echo "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release"
                Remove-Item -Recurse -Force "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release"

                echo 'Changing directory to project...';
                cd C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx;

                echo 'Checking out master branch...';
                git checkout master;

                echo 'Pulling latest changes from origin...';
                git pull;


                echo "2. build windows release "
                flutter build windows --release

                echo "3. rename the generated app name to 50GRAMx Ethosverse.exe"
                Rename-Item -Path "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\fifty_gramx.exe" -NewName "50GRAMx Ethosverse.exe"

                echo "4. Update the app version number"
                # Read the contents of the Inno Setup script
                ${'$'}innoScriptPath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\ethos_node_desktop_windows_inno_script.iss"
                ${'$'}innoScript = Get-Content ${'$'}innoScriptPath

                # Use regex to find and replace the version definition
                setx updatedInnoScript = foreach (${'$'}line in ${'$'}innoScript) {
                    if (${'$'}line -match '#define MyAppVersion\s+"(\d{4}\.\d{2}\.\d{2})"') {
                        # Replace the version number with the new one
                        ${'$'}line -replace ${'$'}matches[1], {{ VERSION_NUMBER }}
                    } else {
                        ${'$'}line
                    }
                }

                # Write the updated contents back to the script file
                ${'$'}updatedInnoScript | Set-Content ${'$'}innoScriptPath

                # Confirm the changes
                Write-Host "Updated MyAppVersion to ${'$'}VERSION_NUMBER in the Inno Setup script."


                echo "5. Execute the inno script to create the build"
                & 'C:\Program Files (x86)\Inno Setup 6\ISCC.exe' C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\ethos_node_desktop_windows_inno_script.iss
                echo "generates at C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\windows\installers\50GRAMx Ethosverse.exe"

                echo "6. Upload the exe to gcloud packges"

                # Path to your .exe file
                setx exeFilePath = "C:\Users\amitk\StudioProjects\eapp-hybrid-dart\fifty_gramx\build\windows\x64\runner\Release\50GRAMx Ethosverse.exe"

                # Destination in the GCS bucket
                setx gcsDestination = "gs://packges/com.50gramx.dev/50GRAMx Ethosverse.exe"
                cd C:\Users\amitk\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin\
                .\gsutil cp ${'$'}exeFilePath ${'$'}gcsDestination
                
            """
        }

        requirements {
            workerTags("windows-pool")
            workerTags("amitkumarkhetan15-user")
        }    
    }
}