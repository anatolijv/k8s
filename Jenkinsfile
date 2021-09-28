pipeline{
    agent{
        kubernetes {

        }
    }
    stages{
        stage("Build") {
            steps {
                sh echo $JENKINS_SECRET
            }
        }
    }
}