pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'ng build'
            }
        }
        stage('Deploy') {
            steps {
                sh ‘scp -r /var/lib/jenkins/workspace/ang-cicd/dist/angular-devops root@3.82.126.130:/var/www/dist/’
            }
        }                  
    }
}