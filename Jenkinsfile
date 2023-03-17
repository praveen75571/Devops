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
                     bat 'xcopy "target\\*.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\webapps\\" /Y'
                }
                 }
             }
        }
    }
}
