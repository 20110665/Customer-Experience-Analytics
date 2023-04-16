pipeline {
    agent any
    
    environment {
    	DOCKER_IMAGE = "20110665/cae2"
    	DOCKER_TAG = "1.0"
    }
    
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/20110665/Customer-Experience-Analytics', branch: 'main'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage("build") {
            agent { node {label 'master'}}
            environment {
                DOCKER_TAG="${GIT_BRANCH.tokenize('/').pop()}-${GIT_COMMIT.substring(0,7)}"
            }
            steps {
                sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} . "
                sh "docker tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest"
                sh "docker image ls | grep ${DOCKER_IMAGE}"
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh 'echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin'
                    sh "docker push ${DOCKER_IMAGE}:${DOCKER_TAG}"
                    sh "docker push ${DOCKER_IMAGE}:latest"
            }

            //clean to save disk
            sh "docker image rm ${DOCKER_IMAGE}:${DOCKER_TAG}"
            sh "docker image rm ${DOCKER_IMAGE}:latest"
      	}
    }
}
}