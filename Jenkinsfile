pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'java-compare-app:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Replace with your actual GitHub repository URL
                git branch: 'main', url: 'https://github.com/pradipkhendake/docker_java_hello.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${env.DOCKER_IMAGE} ."
                    } else {
                        error "Dockerfile not found in the workspace."
                    }
                }
            }
        }

        stage('Docker Run') {
            steps {
                sh "docker run --rm ${env.DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo 'Java Docker image built and container executed successfully!'
        }
        failure {
            echo 'Pipeline failed during build or execution.'
        }
    }
}
