pipeline {
    agent ethosverse_india_50gramx_delivery

    stages {
        stage ('Deploy') {
           steps {
               sh '''
               #!/bin/sh
               export APP_VERSION=`echo "$buildNumber" | sed -n -e 18p fifty_gramx/pubspec.yaml | sed 's/^.*+//'`
               ansible-playbook  playbook.yml --extra-vars \"app_version=${APP_VERSION}\"
               '''
               echo "done"
           }
       }
    }
}