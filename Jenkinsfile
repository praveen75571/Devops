pipeline {
    agent {
        label 'windows'
    }

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
    }
}
