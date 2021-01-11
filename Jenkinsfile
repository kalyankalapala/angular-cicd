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
                sshPublisher(publishers: [sshPublisherDesc(configName: 'kalyan mit', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 180000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//var/www//angular', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/*')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }                  
    }
}
