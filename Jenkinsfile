pipeline {
    agent { label 'agent1' }

    stages {
        stage('build') {
            steps {
                sh "docker build -t youssef138/agent:${env.BUILD_NUMBER} ."
            }

        }
        stage('login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh "docker push youssef138/agent:${env.BUILD_NUMBER}"
                }
            }

        }
    }
}