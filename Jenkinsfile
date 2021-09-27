stage('stage') {
  steps {
    step {
        sh ping google.com
    }
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
