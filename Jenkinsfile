pipeline {
    agent any

    stages {
        stage('Build Web') {
            steps {
                echo "Will build web"
            }
        }
        stage('Building web') {
            steps {
                sh '''
                  #!/bin/sh
                  flutter build web --release
                  '''
            }
        }
    }
}