// Python Added 2 Stages...
pipeline {
    agent { docker { image 'python:3.10.1-alpine' } }
    stages {
        stage('Building Pipeline...') {
            steps {
                echo "Attempting To Run the Python Program: 'app.py'..."
                sh 'python3 app.py'
            }
        }
        stage('Checking OS_RELEASE File...') {
            steps {
                echo "Checking CentOS /etc/os-release file..."
                sh 'cat /etc/os-release'
            }
        }
                
    }
}
