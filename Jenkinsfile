pipeline {
    agent any
    
    tools {
        // Thêm đường dẫn đến Maven vào môi trườngg
        maven 'Maven 3.9.1'
    }
    
    environment {
    	DOCKER_IMAGE = "20110665/cae2"
    	DOCKER_TAG = "1.0"
    }
    
    
    
    stages {
        stage("Login to docker"){
            steps{
             withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                 sh 'echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin'
                 }
             }
        }
        stage('Checkout') {
            steps {
                git url: 'https://github.com/20110665/Customer-Experience-Analytics', branch: 'prod'
            }
        }
        stage('Build') {
            steps {
                sh 'java -version'
                sh 'mvn clean install'
            }
        }
        //test jenkin file
       stage("Delete old container and image") {
            steps {
                script {
                    def containerIds = sh(script: "docker ps -aq --filter name=customer-experience-analytics", returnStdout: true).trim()
                    if (!containerIds.isEmpty()) {
                        sh 'docker stop customer-experience-analytics'
                        sh 'docker rm customer-experience-analytics'
                    }
                    //sh 'docker image rm ${DOCKER_IMAGE}:${DOCKER_TAG}'
                }
            }
        }
        stage("Deploy"){
            steps {
                sh 'docker run -p 80:4000 --name customer-experience-analytics -d 20110665/cae2:1.0'
            }
        }
    }
}