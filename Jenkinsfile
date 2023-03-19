pipeline {
    agent any
    stages {
        stage('Git-Checkout') {
            steps {
                git url: "https://github.com/balareddy2013/DevOps.git"
            }
        }

        stage(' Maven-Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        
        stage('sonar scan') {
            steps {
                bat 'C:\Users\DELL\Downloads\sonarqube-9.9.0.65466\sonarqube-9.9.0.65466\bin\windows-x86-64\StartSonar.bat'
            }
        }
        stage('Deploy to Tomcat') {
             steps {
                 script {
                // Deploy the .war file to Tomcat using the Tomcat Manager
                     bat 'xcopy "target\\*.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\" /Y'
                }
                 }
             }
        }
    }
