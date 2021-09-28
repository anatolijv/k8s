pipeline{
    agent{
        kubernetes {

        }
    }
    stages{
        stage("Build") {
            steps {
                echo $JENKINS_SECRET
            }
        }
    }
}