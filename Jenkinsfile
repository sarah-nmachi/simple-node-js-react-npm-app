pipeline {
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
    }
}
