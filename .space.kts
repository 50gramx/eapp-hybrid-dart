/**
* JetBrains Space Automation
* This Kotlin script file lets you automate build activities
* For more info, see https://www.jetbrains.com/help/space/automation.html
*/

job("web release") {
    container(displayName = "Build Web Release", image = "ubuntu") {
    	shellScript {
          content = """
            apt update -y
            apt install snapd -y
          	snap install flutter --classic -y
            flutter doctor -v
           	cd fifty_gramx && flutter build web --release
          """
        }
    }
}
