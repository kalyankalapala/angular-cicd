pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'ng build'
            }
        }
        stage('SSH transfer') {
         script {
          sshPublisher(
           continueOnError: false, failOnError: true,
           publishers: [
            sshPublisherDesc(
             configName: "kalyan mit ",
             verbose: true,
             transfers: [
              sshTransfer(
               sourceFiles: "**/*",
               remoteDirectory: "//var//www//angular",
               execCommand: "yum install -y docker"   
              )
             ]) 
           ]) 
         }
        } 
        stage('EMAIL') {
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'kalyan mit', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'cd /var/www/angular/dist/angular-devops && mv * /var/www/dist', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//var/www//angular', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/*')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }                  
    }
}
