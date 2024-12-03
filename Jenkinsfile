pipeline {
    agent any  // Use any available agent/node

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...youssef'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...youssef'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...youssef'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
