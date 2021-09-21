pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo "Hello world"
                sh 'docker build -t centos -f ./Dockerfile .'
            }
        }
    }
}