pipeline { 
    agent {
            kubernetes {
            defaultContainer 'Jenkins'
            namespace 'default'
            }
    }   
    stages {
        stage('stage') {
            step {
                echo 'Hello World'
            }        
        post {
            // No post conditions specified
        }
        }
    }
}