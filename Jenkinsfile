pipeline {
    agent any
	
    tools {
        maven 'Maven'
        jdk 'JAVA'
    }

    environment {
        MVN_HOME = tool 'Maven'
        JAVA_HOME = tool 'JAVA'
    }

    stages {
        stage("Checkout") {
            steps {
                git url: "https://github.com/balareddy2013/DevOps.git"
            }
        }

        stage('Build') {
            steps {
                sh "${MVN_HOME}/bin/mvn clean install"
            }
        }
    }
}
