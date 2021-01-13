pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'rm -rf /var/lib/jenkins/workspace/dist-cicd*'
                sh 'npm install'
                sh 'ng build'
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
                                execCommand: 'yum install -y docker && systemctl restart docker',
                                execTimeout: 120000,
                                flatten: false,
                                makeEmptyDirs: false,
                                noDefaultExcludes: false,
                                patternSeparator: '[, ]+',
                                remoteDirectory: '//var//www//kalyan',
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
