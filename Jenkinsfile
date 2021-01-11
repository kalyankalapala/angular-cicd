// Powered by Infostretch 

timestamps {

node () {

	stage ('angular - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'c6b55a0a-5978-4537-b5cf-13cecf6a2769', url: 'https://github.com/kalyankalapala/angular-cicd.git']]]) 
	}
	stage ('angular - Build') {
 			// Shell build step
sh """ 
date
npm -v
npm install
ng build 
 """ 
	}
	stage ('angular - Post build actions') {
/*
Please note this is a direct conversion of post-build actions. 
It may not necessarily work/behave in the same way as post-build actions work.
A logic review is suggested.
*/
		// Mailer notification
		step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 'kalyan.mitresource@gmail.com, kalyankalapala24@gmail.com', sendToIndividuals: false])

// Unable to convert a post-build action referring to "jenkins.plugins.publish__over__ssh.BapSshPublisherPlugin". Please verify and convert manually if required. 
	}
}
}