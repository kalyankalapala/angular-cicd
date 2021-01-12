pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'ng build'
            }
        }
        stage('Deploy') {
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'angular', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'systemctl restart docker', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//var//www//html', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/*')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }                  
    }
}