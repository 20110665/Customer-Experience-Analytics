pipeline {
    agent any
    
    tools {
        // Thêm đường dẫn đến Maven vào môi trường
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
//     stage("Delete old container and image"){
//         steps{
//              sh 'docker stop customer-experience-analytics'
//             sh 'docker rm customer-experience-analytics'
//             sh 'docker image rm ${DOCKER_IMAGE}:${DOCKER_TAG}'
//         }
//     }
        
        stage('Checkout') {
            steps {
                git url: 'https://github.com/20110665/Customer-Experience-Analytics', branch: 'Kiet'
            }
        }
        
        stage('Build') {
            steps {
                sh 'java -version'
                sh 'mvn clean install'
            }
        }
//         stage('Scan') {
//             steps {
//                 withSonarQubeEnv(installationName: 'Sonarqube') { 
//                     sh './mvnw clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar'
//                 }
//             }
//         }
        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('Sonarqube') {
                // Run SonarQube Scanner
                    script {
                        def scanner = tool 'SonarQubeScanner'
                        withEnv(["PATH+SONARQUBE_SCANNER=${scanner}/bin"]) {
                            sh 'sonarScanner'
                        }
                    }
                }
            }
        }
        stage("Deploy"){
            steps {
                sh 'docker run -p 80:4000 --name customer-experience-analytics 20110665/cae2:1.0'
            }
        }
        //test jenkins file
    }
}
