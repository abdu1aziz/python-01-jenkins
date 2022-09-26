// Python Added 2 Stages...
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
        stage('Testing Pipeline...') {
            agent { docker { image 'python:3.10.1-alpine' } }
            steps {
                echo "Checking CentOS /etc/os-release file..."
                sh 'cat /etc/os-release'
            }
        }
                
    }
}
