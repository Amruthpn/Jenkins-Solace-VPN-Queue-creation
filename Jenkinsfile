pipeline {
    agent any
    environment {
        SOLACE_HOST = "localhost:8080"
        SOLACE_USER = credentials('admin')
        SOLACE_PASS = credentials('admin')
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Amruthpn/Jenkins-Solace-VPN-Queue-creation.git'
            }
        }
        stage('Create VPN') {
            steps {
                sh 'bash scripts/create_vpn.sh'
            }
        }
        stage('Create Queue') {
            steps {
                sh 'bash scripts/create_queue.sh'
            }
        }
    }
}
