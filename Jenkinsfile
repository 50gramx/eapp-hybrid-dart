pipeline {
    agent any

    stages {
        stage('Build Web') {
            steps {
                echo "Will build web"
            }
        }
        stage('Show files') {
                    steps {
                        ls
                    }
                }
        stage('Building web') {
            steps {
                sh '''
                  #!/bin/sh
                  cd fifty_gramx
                  flutter build web --release
                  '''
            }
        }
    }
}