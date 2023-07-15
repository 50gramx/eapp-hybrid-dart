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
    
    container(displayName = "Build Web Release", image = "50gramx.registry.jetbrains.space/p/main/ethosindiacontainers/web-base:1.0.11") {
    	shellScript {
          content = """
          	pwd
          	ls -l
           	export FIREBASE_TOKEN=1//0g6W2blF3CHfpCgYIARAAGBASNwF-L9IrtUdRaTxhajHTTi15Sqz3y8HKX3XxVS7vXva_88tbGJifrxut3cbAWlz5wKg1C5c6LXI
            npm -v
            snap install node --classic
          	cd fifty_gramx && flutter clean && flutter pub get && flutter pub cache repair && flutter build web --release && firebase deploy --token ${"$"}FIREBASE_TOKEN
          """
        }
    }
}


/* 


         // Upload build/build.zip to the default file repository
        fileArtifacts {
            // To upload to another repo, uncomment the next line
            // repository = FileRepository(name = "my-file-repo", remoteBasePath = "{{ run:number }}")

            // Local path to artifact relative to working dir
            localPath = "build/build.zip"
            // Don't fail job if build.zip is not found
            optional = true
            // Target path to artifact in file repository.
            remotePath = "{{ run:number }}/build.zip"
            // Upload condition (job run result): SUCCESS (default), ERROR, ALWAYS
            onStatus = OnStatus.SUCCESS
        }
*/