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
                sh 'ssh root@3.82.126.130 rm -rf /var/www/cricket/'
                sh 'ssh root@3.82.126.130 mkdir -p /var/www/cricket'
                sh 'scp -r /var/lib/jenkins/workspace/ang-cicd/dist/angular-devops/* root@3.82.126.130:/var/www/cricket'
            }
        }                  
    }
}