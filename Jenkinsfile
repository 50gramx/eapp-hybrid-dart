pipeline {
    agent any

    stages {
        stage('Build Web Release') {
            steps {
                sh '''
                  #!/bin/sh
                  cd fifty_gramx && flutter build web --release
                  '''
                echo "done"
            }
        }
        stage('Build Image for Web -- arm64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker build --platform=linux/arm64 -t ethosindia/eapp-web:v${APP_VERSION}-arm64 .
                '''
                echo "done"
            }
        }
        stage('Build Image for Web -- amd64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker build --platform=linux/amd64 -t ethosindia/eapp-web:v${APP_VERSION}-amd64 .
                '''
                echo "done"
            }
        }
        stage('Push Image for Web -- arm64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker push ethosindia/eapp-web:v${APP_VERSION}-arm64
                '''
                echo "done"
            }
        }
        stage('Push Image for Web -- amd64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker push ethosindia/eapp-web:v${APP_VERSION}-amd64
                '''
                echo "done"
            }
        }
        stage('Create Image Manifest for Web -- amd64, arm64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker manifest create ethosindia/eapp-web:v${APP_VERSION} \
                    --amend ethosindia/eapp-web:v${APP_VERSION}-arm64 \
                    --amend ethosindia/eapp-web:v${APP_VERSION}-amd64 \
                    --insecure
                '''
                echo "done"
            }
        }
        stage('Push Image Manifest for Web -- amd64, arm64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker manifest push ethosindia/eapp-web:v${APP_VERSION}
                '''
                echo "done"
            }
        }
        stage('Verify Image Manifest for Web -- amd64, arm64') {
            steps {
                sh '''
                #!/bin/sh
                export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
                docker buildx imagetools inspect ethosindia/eapp-web:v${APP_VERSION}
                '''
                echo "done"
            }
        }
        stage('Start Multiverse Delivery') {
            agent {
                label 'ethosverse_india_50gramx_delivery'
            }
            steps {
                withKubeConfig([credentialsId: "multiverse-ethosindia-pi-config"]) {
                    sh 'kubectl get pods --all-namespaces'
                }
            }
        }

    }
}