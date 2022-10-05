pipeline {
    agent any

    environment {
        // APP_VERSION
        APP_VERSION = '0'
    }

    stages {
        stage('Build Web Release') {
            steps {
                sh '''
                  #!/bin/sh
                  cd fifty_gramx && flutter build web --release
                  '''
            }
        }
        stage('Show Build Number Before Fetch') {
            steps {
                echo APP_VERSION
            }
        }
        stage('Fetch Build Number') {
            steps {
                sh '''
                  #!/bin/sh
                   APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                  '''
                echo APP_VERSION
            }
        }
        stage('Show Build Number') {
            steps {
                echo APP_VERSION
            }
        }
//         stage('Build Web Docker Image') {
//             steps {
//                 sh '''
//                 #!/bin/sh
//                 docker build --platform=linux/arm64 -t ethosindia/eapp-web: .
//                 '''
//             }
//         }
    }
}