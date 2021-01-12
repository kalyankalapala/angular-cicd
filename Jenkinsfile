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
                sshPublisher(publishers: [sshPublisherDesc(configName: 'angular', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'yum install -y docker', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/var/www/sachin', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/*')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }                  
    }
}