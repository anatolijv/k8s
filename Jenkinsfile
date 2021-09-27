pipeline { 
agent {
        kubernetes {
        defaultContainer 'Jenkins'
        namespace 'default'
        }
    }
    stages {
        stage('stage') {
            steps {
                step {                    
                    echo 'Hello World'
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