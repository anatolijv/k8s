pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo "Hello world"
                docker build -f Dockerfile .
            }
        }
    }
}