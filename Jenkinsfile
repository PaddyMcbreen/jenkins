pipeline {
    agent any
    
    environment {
        IMAGE_NAME = "my-node-app"
        CONTAINER_NAME = "node-app-container"
        REPO_URL = "https://gitlab.com/Reece-Elder/devops-m5-nodeproject.git"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: "${REPO_URL}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh "docker stop ${CONTAINER_NAME} || true"
                    sh "docker rm ${CONTAINER_NAME} || true"
                    sh "docker run -d -p 5000:5000 --name ${CONTAINER_NAME} ${IMAGE_NAME}"
                }
            }
        }
    }

    post {
        success {
            echo "Deployment successful! App is running on port 5000."
        }
        failure {
            echo "Deployment failed."
        }
    }
}
