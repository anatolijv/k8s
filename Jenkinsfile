pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo "Hello world"
                sh 'docker build -f Dockerfile .'
            }
        }
    }
}