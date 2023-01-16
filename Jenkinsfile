pipeline {
    agent any
    stages {
        stage('Build & Deploy') {
            steps {
                ls
                sh ./deployment.sh
            }
        }
    }
}
