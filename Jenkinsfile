pipeline { 
    agent all
    stages {
        stage('stage') {
            seteps {
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
            // No post conditions specified
        }
        }
    }
}