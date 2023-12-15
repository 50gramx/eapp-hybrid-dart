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
            enabled = false
            anyBranchMatching {
                +"release-*"
                +"master"
            }
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

    }
}


job("Build and publish bundle to internal track") {
    startOn {
        gitPush {
            enabled = true
            anyBranchMatching {
                +"release-*"
                +"master"
            }
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
                
                echo "Switch to 50GRAMx Directory"
                cd fifty_gramx
                
                echo "fix dependencies"
                flutter pub get && flutter pub cache repair
                
                flutter upgrade
                flutter clean
                flutter build appbundle
                flutter build appbundle --debug
                
                echo "Build the app bundle"
                flutter build appbundle -vv
                
            """
        }
    }
}

job("Test deployment") {
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
