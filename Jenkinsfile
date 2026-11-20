pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Flask Application'
                sh 'python3 -m pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Unit Tests'
                sh 'python3 -m pytest -v'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Flask Application'
                sh '''
                    mkdir -p deployment
                    cp app.py requirements.txt deployment/
                    echo "Deployment completed successfully!"
                    ls -l deployment/
                '''
            }
        }
    }
}