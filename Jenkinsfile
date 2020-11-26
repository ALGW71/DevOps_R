pipeline {
    agent any
    stages {
        
        stage('Build Environment') {
            steps{
                sh 'pwd'
                sh 'ls -l'
                sh 'docker build --tag test_enviro .'
                sh 'docker run -dit --name ts test_enviro'
            }
        }
        
        stage('Test') {
            steps {
                sh 'docker exec -i ts bash'
                sh 'pwd; ls -l'
                sh 'cd /data/'
                sh 'node --version'
                sh 'svn --version'
                sh 'Rscript test.r'
                sh 'exit'
            }
        }
        
        stage('Shutdown') {
            steps {
            sh 'docker rm --force ts'
            }
        }
    }
}
