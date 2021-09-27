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

            failure {
                steps {
                    script {
                        if ( JOB_NAME.contains("myjob") ) {
                        // do something
                    }
                }
            }
        }
            // No post conditions specified
        }
        }
    }
}