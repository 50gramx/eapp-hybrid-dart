/**
* JetBrains Space Automation
* This Kotlin script file lets you automate build activities
* For more info, see https://www.jetbrains.com/help/space/automation.html
*/

job("Build Base Image") {
    startOn {
        gitPush {
            pathFilter {
                +"Dockerfile.base"
            }
        }
    }
    
    host("Build and push a Docker image") {
        dockerBuildPush {
            // by default, the step runs not only 'docker build' but also 'docker push'
            // to disable pushing, add the following line:
            // push = false

            // path to Docker context (by default, context is working dir)
            context = "docker"
            // path to Dockerfile relative to the project root
            // if 'file' is not specified, Docker will look for it in 'context'/Dockerfile
            file = "docker/config/Dockerfile"
            // build-time variables
            args["HTTP_PROXY"] = "http://10.20.30.2:1234"
            // image labels
            labels["vendor"] = "mycompany"
            // to add a raw list of additional build arguments, use
            // extraArgsForBuildCommand = listOf("...")
            // to add a raw list of additional push arguments, use
            // extraArgsForPushCommand = listOf("...")
            // image tags
            tags {
                // use current job run number as a tag - '0.0.run_number'
                +"mycompany.registry.jetbrains.space/p/prjkey/mydocker/myimage:1.0.${"$"}JB_SPACE_EXECUTION_NUMBER"
            }
        }
    }
}

job("web release") {	
  
    container(displayName = "Build Web Release", image = "ubuntu") {
    	shellScript {
          content = """
          	echo "update ubuntu"
            apt update -y
            echo "install flutter CLI Tools"
            apt install -y wget bash curl file git unzip xz-utils zip
            echo "download flutter"
          	wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.10.6-stable.tar.xz
           	pwd
            ls -l -h
            echo "extract flutter"
            tar xf /mnt/space/work/eapp-hybrid-dart/flutter_linux_3.10.6-stable.tar.xz
            echo "updating path"
            export PATH="${'$'}PATH:`pwd`/flutter/bin"
            echo "updated PATH: ${'$'}PATH"
            git config --global --add safe.directory /mnt/space/work/eapp-hybrid-dart/flutter
            echo "flutter doctor"
            flutter doctor -v
            flutter channel
            echo "flutter precache"
            flutter precache
            echo "flutter doctor"
            flutter doctor -v
            echo "build web release"
           	cd fifty_gramx && flutter build web --release
          """
        }
    }
}
