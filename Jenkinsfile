pipeline {
    agent any

    stages {
        stage('Build Web') {
            steps {
                echo "Will build web"
                flutter build web --release
            }
        }
    }
}