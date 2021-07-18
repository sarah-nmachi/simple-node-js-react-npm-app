pipeline {
    agent {
        docker {
            image 'node:lts-buster-slim' 
            args '-p 3000:3000' 
        }
    }
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
    }
}