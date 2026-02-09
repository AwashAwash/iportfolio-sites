node {
    stage('Checkout') {
        git url: 'https://github.com/AwashAwash/iportfolio-sites.git', branch: 'main'
    }

    stage('Test Environment') {
        echo 'Jenkins CI is working!'
        sh 'docker --version'
        sh 'trivy --version || echo "Trivy not installed yet"'
    }
}
