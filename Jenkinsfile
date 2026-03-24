pipeline {
    agent any
    environment {
        SOLACE_CREDS = credentials('solace-admin-creds')
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
