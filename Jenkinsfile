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
        stage ('Initialize & SonarQube Scan') {
            steps {
                def scannerHome = tool 'sonarScanner';
                withSonarQubeEnv('Sonar') {
                    bat """
                    ${scannerHome}/bin/sonar-runner.bat
                    """
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
}
