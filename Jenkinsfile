pipeline {
    agent any
    stages {
        stage('List directory') {
            steps {
                ls
            }
        }
        stage('Build & Deploy') {
            steps {
                sh ./deployment.sh
            }
        }
    }
}
