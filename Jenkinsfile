node {
    stage('Clean workspace') {
        cleanWs()
        echo "done"
    }
    stage('Checkout Repository') {
        checkout scm
        echo "done"
    }
    stage('Build Web Release') {
        sh '''
        #!/bin/sh
        cd fifty_gramx && flutter build web --release
        '''
        echo "done"
    }
    stage('Build Image for Web -- arm64') {
        sh '''
        #!/bin/sh
        export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
        docker build --platform=linux/arm64 -t ethosindia/eapp-web:v${APP_VERSION}-arm64 .
        '''
        echo "done"
    }
    stage('Build Image for Web -- amd64') {
        sh '''
        #!/bin/sh
        export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
        docker build --platform=linux/amd64 -t ethosindia/eapp-web:v${APP_VERSION}-amd64 .
        '''
        echo "done"
    }
    stage('Push Image for Web -- arm64') {
        sh '''
        #!/bin/sh
        export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
        docker push ethosindia/eapp-web:v${APP_VERSION}-arm64
        '''
        echo "done"
    }
    stage('Push Image for Web -- amd64') {
        sh '''
        #!/bin/sh
        export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
        docker push ethosindia/eapp-web:v${APP_VERSION}-amd64
        '''
        echo "done"
    }
    stage('Create Image Manifest for Web -- amd64, arm64') {
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
    stage('Push Image Manifest for Web -- amd64, arm64') {
        sh '''
        #!/bin/sh
        export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
        docker manifest push ethosindia/eapp-web:v${APP_VERSION}
        '''
        echo "done"
    }
    stage('Verify Image Manifest for Web -- amd64, arm64') {
        sh '''
        #!/bin/sh
        export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
        docker buildx imagetools inspect ethosindia/eapp-web:v${APP_VERSION}
        '''
        echo "done"
    }
    stage('Delivery - Multiverse - Digital Ocean Node') {
        withKubeConfig(
            clusterName: 'microk8s-cluster',
            contextName: 'microk8s',
            credentialsId: 'multiverse-india-do-config',
            namespace: 'ethosverse',
            serverUrl: 'https://157.245.106.167:16443') {
            sh 'kubectl apply -f playbook/deployment.yaml'
            sh 'kubectl apply -f playbook/service.yaml'
        }
        echo "done"
    }
    stage('Clean workspace') {
        cleanWs()
        echo "done"
    }
}