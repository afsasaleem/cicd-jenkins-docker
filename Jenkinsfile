pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/afsasaleem/cicd-jenkins-docker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t  cicd-jenkins-docker .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 cicd-jenkins-docker'
                }
            }
        }
    }
}

