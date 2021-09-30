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
                    sh "python -m pip install --upgrade pip"
                    sh "python3 sha.py 'Python version'"
                }
            }
        }
    }
}