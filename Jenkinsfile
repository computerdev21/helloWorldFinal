pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t hello-world .'
            }
        }
        stage('Test') {
            steps {
                sh '''
                    npm install
                    npm test
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 80:80 hello-world'
            }
        }
    }
}
