/**
* JetBrains Space Automation
* This Kotlin script file lets you automate build activities
* For more info, see https://www.jetbrains.com/help/space/automation.html
*/

job("Build Base Image") {
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
          	cd fifty_gramx && flutter clean && flutter pub get && flutter pub cache repair && flutter build web --release && firebase deploy --token ${"$"}FIREBASE_TOKEN
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
