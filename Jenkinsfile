pipeline { 
    agent {
            kubernetes {
            defaultContainer 'Jenkins'
            namespace 'default'
            }
    }   
    stages {
        stage('stage') {
            seteps {
                step {
                    echo 'Hello World'
                }
            }
        post {
            // No post conditions specified
        }
        }
    }
}