@Library('jenkins-shared-lib') _

pipeline {
  agent any

  environment {
    DOCKER_IMAGE = "registry.digitalocean.com/at-apps-registry/flask-app:latest"
    KUBECONFIG_CRED = 'kubeconfig'
    DO_API_TOKEN_CRED = 'do-api-token'
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          buildDockerImage(image: env.DOCKER_IMAGE)
        }
      }
    }

    stage('Push to DOCR') {
      steps {
        withCredentials([string(credentialsId: env.DO_API_TOKEN_CRED, variable: 'DO_API_TOKEN')]) {
          script {
            pushToDOCR(image: env.DOCKER_IMAGE, token: DO_API_TOKEN)
          }
        }
      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        withCredentials([file(credentialsId: env.KUBECONFIG_CRED, variable: 'KUBECONFIG')]) {
          script {
            deployToK8s(image: env.DOCKER_IMAGE)
          }
        }
      }
    }

    stage('Verify Deployment') {
      steps {
        script {
          verifyDeployment(url: "http://flask.local/health")
        }
      }
    }
  }
}
