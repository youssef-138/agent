pipeline {
    agent any  // Use any available agent/node

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...master'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...master'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...master'
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
