pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'np install'
                sh 'ng build'
            }
        }
        stage('Deploy') {
            steps {
                emailext body: 'build fail', subject: 'build status ', to: 'kalyan.mitresource@gmail.com'
            }
        }                  
    }
}
