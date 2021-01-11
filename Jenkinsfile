pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'date'
            }
            steps {
                sh 'npm install'
                sh 'ng build'
            }
        }
    }
}
