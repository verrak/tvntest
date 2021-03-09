pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                git credentialsId: 'git_verrak', url: 'https://github.com/verrak/tvntest.git'
            }
        }
        stage('build') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('build image') {
            steps {
                sh "docker build -t tvn ."
            }
        }
        stage('run & deploy') {
            steps {
                sh "docker run -d -p 8084:8080 tvn"
            }
        }
    }
}
