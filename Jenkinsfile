pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Starting the Build stage'
                sh 'ls'
                sh 'pwd'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running Tests'
                sh 'touch testfile.txt'
                sh 'ls -l'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying Application'
                sh 'mv testfile.txt deployed_testfile.txt'
                sh 'ls -l'
            }
        }
    }
}
