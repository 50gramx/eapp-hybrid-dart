/**
* JetBrains Space Automation
* This Kotlin script file lets you automate build activities
* For more info, see https://www.jetbrains.com/help/space/automation.html
*/

job("Hello World!") {
    container(displayName = "Say Hello", image = "hello-world") 
}


job("Run on Docker Integration Update") {
    startOn {
        gitPush {
            pathFilter {
                +"Dockerfile.integration"
            }
        }
    }
    container(displayName = "Say Integration", image = "hello-world")
}