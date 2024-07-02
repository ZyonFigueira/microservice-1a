pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                node {
                    label 'local-server-node'
                }
            }
            steps {
                script {
                    docker.image('ubuntu:20.04').inside {
                        sh 'ls'
                    }
                }
            }
        }
    }
}
