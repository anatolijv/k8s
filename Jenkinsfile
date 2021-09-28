pipeline{
    agent any
    stages{
        agent{
            kubernetes {}
            }   
        stage("Build") {
            steps {
                sh "apt list --installed"
            }
        }
    }
}