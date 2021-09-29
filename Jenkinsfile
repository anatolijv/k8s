pipeline{
    agent any
    stages{
        stage("Build") {
            agent{
                kubernetes {
                    yaml """
                    apiVersion: v1
                    kind:
                    metadata:
                    spec:
                      containers:
                        - name: "jnlp"
                          image: "jenkins/inbound-agent:4.3-4"
                        - name: "python"
                          image: python:latest

                    """
                }
            }   
            steps {
                sh "apt list --installed"
            }
        }
    }
}