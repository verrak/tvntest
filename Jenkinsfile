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
        stage('copy') {
            steps {
                sh "cp /var/lib/jenkins/workspace/tvntest1/target/demo.war /home/ubuntu/tvntest/demo.war"
            }
        }
        stage('deploy') {
            steps {
                sh "docker run -d -p 8084:8080 --name tvntomcat tvn"
            }
        }
    }
}
