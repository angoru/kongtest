pipeline {
    agent any
    stages {
        stage('sync') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                    dir '.'
                    args '-u root'
                }
            }

            stages {
                stage('deck ') {
                    steps {
                        // Get some code from a GitHub repository
                    }
                }
            }

        }
        stage('push changes') {
            agent any
            steps {
                // Get some code from a GitHub repository
                sh 'ls -la'
                sh 'git add .'
                sh 'git commit -a -m "new kong dump"'
                withCredentials([string(credentialsId: 'git_kong', variable: 'TOKEN')]) {
                    sh 'git push https://${TOKEN}@github.com/angoru/kongtest.git HEAD:main'
                }
            }
        }
    }
}
