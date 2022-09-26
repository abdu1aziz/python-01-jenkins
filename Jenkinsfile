pipeline {
    agent none
    stages {
        stage('Building Pipeline...') {
            agent { docker { image 'python:3.10.1-alpine' } }
            steps {
                echo "Checking Python Version..."
                sh 'python --version'
            }
        }
    }
}
