pipeline { 
    agent any
    stages {
        stage('stage') {
            steps {
                step {
                    echo 'Hello World'
                }
            }
            agent {
                kubernetes {
                defaultContainer 'Jenkins'
                namespace 'default'
                }
            }
            post {
                cleanup {
                    cleanWs()
                }
            }  
        }
    }
}