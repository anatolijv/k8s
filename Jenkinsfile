pipeline{
    agent any
    stages{
        stage("Build") {
            agent{
                kubernetes {}
            }   
            steps {
                sh "apt list --installed"
            }
        }
    }
}