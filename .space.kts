/**
* JetBrains Space Automation
* This Kotlin script file lets you automate build activities
* For more info, see https://www.jetbrains.com/help/space/automation.html
*/

job("Build Web Base Image") {
    startOn {
        gitPush {
            pathFilter {
                +"Dockerfile.web.base"
            }
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
                +"50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:1.0.${"$"}JB_SPACE_EXECUTION_NUMBER"
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
                +"50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/android-base:1.0.${"$"}JB_SPACE_EXECUTION_NUMBER"
            }
        }
    }
}


job("web release") {
	startOn {
        gitPush {
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
    
    container(displayName = "Build Web Release", image = "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:1.0.11") {
      
    	shellScript {
          content = """
          	pwd
          	ls -l
           	export FIREBASE_TOKEN=1//0g6W2blF3CHfpCgYIARAAGBASNwF-L9IrtUdRaTxhajHTTi15Sqz3y8HKX3XxVS7vXva_88tbGJifrxut3cbAWlz5wKg1C5c6LXI
            npm -v
           	npm install -g n 
            n stable
          	# cd fifty_gramx && flutter clean && flutter pub get && flutter pub cache repair && flutter build web --release && firebase deploy --token ${"$"}FIREBASE_TOKEN
          """
        }

    }
}


job("Build and publish bundle to internal track") {
    // disable gitPush job trigger
    startOn {
        gitPush { enabled = false }
    }

    container("Build and publish", "mycompany.registry.jetbrains.space/p/projectkey/mydocker/automation-android:1.0.5") {
        env["GOOGLE_SA_KEY"] = Secrets("google_sa_key")
        env["KEY_STORE"] = Secrets("key_store")
        env["KEY_STORE_PASSWORD"] = Secrets("key_store_password")
        env["KEY_PASSWORD"] = Secrets("key_password")
        env["KEY_ALIAS"] = Params("key_alias")

        shellScript {
            content = """
                echo Get private signing key...
                echo ${'$'}KEY_STORE > upload_key.hex
                xxd -plain -revert upload_key.hex  upload_key.jks
                echo Get Google service account key...
                echo ${'$'}GOOGLE_SA_KEY > google_sa_key.hex
                xxd -plain -revert google_sa_key.hex  google_sa_key.json
                echo Build and publish AAB...
                ./gradlew publishBundle
            """
        }
    }
}

job("Test deployment") {
    host("Deploy test container") {
        shellScript {
            content = """
                docker run -d -p 8080:80 httpd:2.4
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
