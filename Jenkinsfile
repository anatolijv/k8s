node {    
    stages {
        stage('stage') {
            step {
                echo 'Hello World'
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