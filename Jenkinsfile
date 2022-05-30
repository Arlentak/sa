pipeline {
    agent {
        docker { image 'christiankm01/agent' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'buildkite-agent-entrypoint start'
            }
        }
    }
}
