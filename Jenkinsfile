pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: "https://github.com/balareddy2013/DevOps.git"
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        
        stage('Deploy to Tomcat') {
             steps {
                 script {
                // Deploy the .war file to Tomcat using the Tomcat Manager
                withCredentials([usernamePassword(credentialsId: 'tomcat-credentials', usernameVariable: 'TOMCAT_USERNAME', passwordVariable: 'TOMCAT_PASSWORD')]) {
                    def warFileName = '02-SpringMVC-0.0.1-SNAPSHOT.war'
                    def tomcatUrl = 'http://localhost:8765/manager/text'
                    def deployUrl = "${tomcatUrl}/deploy?path=/${warFileName}&update=true"
                    def warFile = file("target/${warFileName}")
                    
                    bat "curl -u ${TOMCAT_USERNAME}:${TOMCAT_PASSWORD} --upload-file ${warFile} ${deployUrl}"
                }
                 }
             }
        }
    }
}
