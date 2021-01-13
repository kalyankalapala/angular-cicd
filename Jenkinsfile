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
            script {
                sshPublisher(publishers: [
                    sshPublisherDesc(configName: 'angular',
                        transfers: [
                            sshTransfer(
                                cleanRemote: false,
                                excludes: '',
                                execCommand: 'yum install -y docker',
                                execTimeout: 120000,
                                flatten: false,
                                makeEmptyDirs: false,
                                noDefaultExcludes: false,
                                patternSeparator: '[, ]+',
                                remoteDirectory: '/var/www/cricket',
                                remoteDirectorySDF: false,
                                removePrefix: '',
                                sourceFiles: '**/*'
                            )
                        ],
                        usePromotionTimestamp: false,
                        useWorkspaceInPromotion: false,
                        verbose: false
                    )]
                )
            }
        }
    }               
    }
}
