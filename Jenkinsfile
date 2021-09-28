pipeline{
    agent{
        kubernetes {

        }
    }
    stages{
        stage("Build") {
            steps {
                step("Execute command") {
                    sh echo $JENKINS_SECRET
                }
            }
        }
    }
}