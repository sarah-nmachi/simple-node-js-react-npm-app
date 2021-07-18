pipeline {
    environment {
    registry = "sarahnmachi/shecode1.0"
    registryCredential = 'Docker'
    dockerImage = ''
  }
    agent any
     tools {nodejs "nodejs"}
    stages {
       stage('Cloning Git') {
      steps {
        git 'https://github.com/sarah-nmachi/simple-node-js-react-npm-app.git'
      }
    }
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
      stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
         stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    }
}
