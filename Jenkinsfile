
pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
    }

    stages {

        stage('Build') {
            steps {
                echo 'Building Flask Application'

                checkout scm

                sh '''
                    python3 -m venv .venv
                    .venv/bin/python -m pip install --upgrade pip
                    .venv/bin/python -m pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Running Unit Tests'

                sh '''
                    .venv/bin/python -m pytest -v
                '''
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

    post {
        always {
            archiveArtifacts artifacts: 'deployment/**',
                             allowEmptyArchive: true
        }
    }
}
