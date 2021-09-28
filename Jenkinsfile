pipeline{
    agent{
        kubernetes {

        }
    }
    stages{
        stage("Build") {
            steps {
                step {
                    sh "echo $JENKINS_SECRET"
                }
            }
        }
    }
}