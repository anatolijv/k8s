node {    
    stages {
        stage('stage') {
        steps {
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