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
        stage('Checking for YUM Updates...') {
            steps {
                echo "Checking CentOS avialable updates..."
                sh '''
                    UPDATES=`yum check-update -q | awk '{print $1}'`
                    COUNT=`printf "%s\n" "$UPDATES" | grep -v "^$" | wc -l`
                    YUM=`printf "%s\n" "$UPDATES" | grep -v "^$" | grep yum`
                    echo '--------------------------------------------------------------------------------'
                    echo " Weekly Update Notification for `hostname`"
                    echo "   -> $COUNT update(s) available"
                    if [ -n "$YUM" ]; then
                        echo '   -> IMPORTANT: A Yum update is available. Perform this separately and first.'
                    fi
                    echo '--------------------------------------------------------------------------------'
                    printf "%s\n" "$UPDATES"
                '''
            }
        }

    }
}
