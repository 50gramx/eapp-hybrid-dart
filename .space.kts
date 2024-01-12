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

        requirements {
            workerTags("windows-pool")
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

        requirements {
            workerTags("windows-pool")
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

        requirements {
            workerTags("windows-pool")
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

        requirements {
            workerTags("windows-pool")
        }    
    }
}


job("Build and publish bundle to web track") {
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
        }

        requirements {
            workerTags("windows-pool")
        }
    }

    container("amazoncorretto:17-alpine") {
        kotlinScript { api ->
            api.space().projects.automation.deployments.start(
                    project = api.projectIdentifier(),
                    targetIdentifier = TargetIdentifier.Key("evo-on-50gramx-com"),
                    version = "1.0.${System.getenv("JB_SPACE_EXECUTION_NUMBER")}",
                    // automatically update deployment status based on a status of a job
                    syncWithAutomationJob = true
            )
        }

        requirements {
            workerTags("windows-pool")
        }
    }

    container(displayName = "Build Web Release", image = "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:1.0.11") {
        env["FIREBASE_TOKEN"] = Secrets("FIREBASE_TOKEN")

        shellScript {
            content = """
          	pwd
          	ls -l
            npm -v
           	npm install -g n 
            n stable
          	cd fifty_gramx && flutter clean && flutter pub get && flutter pub cache repair && flutter build web --release && firebase deploy --token ${"$"}FIREBASE_TOKEN
          """
        }

        requirements {
            workerTags("windows-pool")
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

        requirements {
            workerTags("windows-pool")
        }
    }

    container("Build and publish", "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:latest") {
        env["GOOGLE_SA_KEY"] = Secrets("GOOGLE_SERVICE_ACCOUNT_KEY")
        env["KEY_STORE"] = Secrets("PLAY_APP_SIGNING_UPLOAD_KEY")
        env["KEY_STORE_PASSWORD"] = Secrets("PLAY_KEY_STORE_PASSWORD")
        env["KEY_PASSWORD"] = Secrets("PLAY_KEY_PASSWORD")
        env["KEY_ALIAS"] = Params("PLAY_KEY_ALIAS")

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

        requirements {
            workerTags("windows-pool")
        }    
    }
}

job("Build and publish bundle to iOS internal track") {
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

        requirements {
            workerTags("windows-pool")
        }
    }

    host("Build and publish") {
        env["SSH_CONNECT_AMITKUMARKHETAN15_KEY"] = Secrets("SSH_CONNECT_AMITKUMARKHETAN15_KEY")
        env["SSH_CONNECT_AMITKUMARKHETAN15_SECURITY"] = Secrets("SSH_CONNECT_AMITKUMARKHETAN15_SECURITY")

        shellScript {
            content = """
                echo Get amitkumarkhetan15 SSH key...
                apt-get install -y xxd
                echo ${'$'}SSH_CONNECT_AMITKUMARKHETAN15_KEY > id_rsa.hex
                xxd -plain -revert id_rsa.hex  ~/.ssh/id_rsa
                chmod 600 ~/.ssh/id_rsa

                echo Build IPA...
                export BUILD_COMMAND="source ~/.zshrc; cd /opt/ethos/data/automation/eapp-hybrid-dart/fifty_gramx; git checkout master_v2; git pull; security unlock-keychain -p ${'$'}SSH_CONNECT_AMITKUMARKHETAN15_SECURITY login.keychain; flutter build ipa;"
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


job("Build and publish bundle to windows desktop track") {
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
        }

        requirements {
            workerTags("windows-pool")
        }
    }

    container("Build and publish", "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:latest") {
        env["MSIX_CERTIFICATE"] = Secrets("MSIX_CERTIFICATE")
        env["MSIX_CERTIFICATE_PASSWORD"] = Secrets("MSIX_CERTIFICATE_PASSWORD")

        shellScript {
            content = """
                echo Get MSIX Certificate...
                echo ${'$'}MSIX_CERTIFICATE > msix_certificate.hex
                xxd -plain -revert msix_certificate.hex  msix_certificate.pfx
               
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
                
                echo "Build the windows"
                flutter build windows
                dart run msix:create
                
            """
        }

        requirements {
            workerTags("windows-pool")
        }    
    }
}

job("Test deployment") {
    startOn {
        gitPush {
            enabled = false
            anyBranchMatching {
                +"release-*"
                +"master"
            }
        }
    }

    host("Deploy test container") {
        shellScript {
            content = """
                echo "Test Container"
            """
        }

        // run this job only on
        // a Windows worker
        // that is tagged as 'pool-1'
        requirements {
            workerTags("windows-pool")
        }
    }
}
