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
                sshagent (credentials: ['myuser-myserver-ssh-access']) {
                    sh "scp /var/lib/jenkins/workspace/ang-cicd/dist/angular-devops/* root@3.93.146.129:/root/angular-ci"
                }
            }
        }                  
    }
}
