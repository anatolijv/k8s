pipeline{
    agent any
    stages{
        stage("Build") {
            agent{
                kubernetes {
                    yaml """
                    apiVersion: v1
                    kind: Pod
                    metadata:
                    spec:
                      containers:
                        - name: "python"
                          image: python:latest
                          command:
                          - cat
                          tty: true

                    """
                }
            }   
            steps {
                container("python") {
                    ansiColor(xterm) {
                        sh "apt list --installed"
                    }
                }
            }
        }
    }
}