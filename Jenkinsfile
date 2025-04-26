pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'djdocker09/my-node-app'
    }

    stages {
        stage('Clone Repository') {
            steps {
                // This pulls your GitHub code — set the correct repo in the Jenkins job
                git 'https://github.com/somedjgitter/xyz.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE}")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    script {
                        docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
                            dockerImage.push('latest')
                        }
                    }
                }
            }
        }
    }
}
