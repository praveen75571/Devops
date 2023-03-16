pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = "docker.io"
        DOCKER_REPO = "springmvc"
    }
    stages {
        stage("Checkout") {
            steps {
                git url: "https://github.com/balareddy2013/DevOps.git"
            }
        }
        stage("Build and Scan") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("Deploy to Tomcat") {
            steps {
                sh "cp target/*.war /C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps"
                sh "/path/to/tomcat/bin/startup.sh"
            }
        }
        stage("Build and Push Docker Image") {
            steps {
                sh "docker build -t $DOCKER_REGISTRY/$DOCKER_REPO:latest ."
                sh "docker login -u reddybalu2013 -p Balu@1992 $DOCKER_REGISTRY"
                sh "docker push $DOCKER_REGISTRY/$DOCKER_REPO:latest"
            }
        }
    }
}
