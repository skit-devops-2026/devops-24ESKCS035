pipeline {
    agent any

    options {
        timeout(time: 15, unit: 'MINUTES')
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out source repository...'
                checkout scm
            }
        }

        stage('Audit Cleanliness') {
            steps {
                script {
                    echo 'Auditing repository cleanliness...'
                    if (isUnix()) {
                        sh '''
                        FORBIDDEN=("node_modules" "dist" "build" "venv" ".venv" ".DS_Store")
                        for item in "${FORBIDDEN[@]}"; do
                          if [ -e "$item" ]; then
                            echo "Error: Forbidden build artifact $item is present!"
                            exit 1
                          fi
                        done
                        echo "Audit passed."
                        '''
                    } else {
                        bat '''
                        @echo off
                        if exist node_modules (echo Forbidden node_modules found && exit /b 1)
                        if exist dist (echo Forbidden dist found && exit /b 1)
                        if exist build (echo Forbidden build found && exit /b 1)
                        echo Audit passed.
                        '''
                    }
                }
            }
        }

        stage('Verify Syntax & Lint') {
            steps {
                echo 'Running JavaScript syntax lint...'
                script {
                    if (isUnix()) {
                        sh 'npm run lint'
                    } else {
                        bat 'npm run lint'
                    }
                }
            }
        }

        stage('Execute Unit Tests') {
            steps {
                echo 'Executing automated unit test suite...'
                script {
                    if (isUnix()) {
                        sh 'npm test'
                    } else {
                        bat 'npm test'
                    }
                }
            }
        }
    }

    post {
        success {
            echo '======================================'
            echo '  ALL TEST CASES PASSED SUCCESSFULLY! '
            echo '======================================'
        }
        failure {
            echo '======================================'
            echo '  PIPELINE FAILED - CHECK TEST LOGS   '
            echo '======================================'
        }
    }
}