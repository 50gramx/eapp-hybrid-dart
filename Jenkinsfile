pipeline {
    agent any

    stages {
        stage('Build Web Release') {
            steps {
                sh '''
                  #!/bin/sh
                  cd fifty_gramx && flutter build web --release
                  '''
            }
        }
        stage('Build Web Docker Image') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker build --platform=linux/arm64 -t ethosindia/eapp-web:v${APP_VERSION}-arm64 .
                '''
            }
        }
        stage('Push Web Docker Image') {
            steps {
                echo "Will push"
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker push ethosindia/eapp-web:v${APP_VERSION}-arm64
                '''
            }
        }
    }
}