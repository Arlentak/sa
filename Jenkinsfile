pipeline {
    agent {
        docker { image 'christiankm01/kilo:1' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'lcc'
            }
        }
    }
}
