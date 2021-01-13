pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'date'
            }
        }
        stage('Deploy') {
            steps {
                sshagent (credentials: ['b54ee031-d33f-47d6-9e24-86952c540ebe']) {
                    sh "scp /root/angular-ci/index.html root@3.93.58.117:/var/www/html"
                }
            }
        }                  
    }
}
