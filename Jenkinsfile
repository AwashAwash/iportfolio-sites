pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/AwashAwash/iportfolio-sites.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t awashawash/awash-portfolio:latest .'
            }
        }

        stage('Install Trivy (if needed)') {
            steps {
                sh 'curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin || echo "Trivy already installed"'
            }
        }

        stage('Trivy Scan') {
            steps {
                sh 'trivy image --severity CRITICAL,HIGH awashawash/awash-portfolio:latest || true'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                    sh 'docker push awashawash/awash-portfolio:latest'
                }
            }
        }
    }

    post {
        always {
            sh 'docker logout || true'
        }
    }
}
