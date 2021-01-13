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
                    sh "ssh -vvv -o StrictHostKeyChecking=no -T root@3.93.58.117"
                }
            }
        }                  
    }
}
