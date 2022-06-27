pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            dir '.'
            // args '-u root'
        }

    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                sh 'ls -la'
                sh 'docker pull kong/deck'
                sh 'docker run --rm --env DECK_KONG_ADDR=http://10.152.183.31:8001  kong/deck:latest sync'
                sh 'git add .'
                sh 'git commit -a -m "new kong dump"'
                withCredentials([string(credentialsId: 'git_kong', variable: 'TOKEN')]) {
                    sh 'git push https://${TOKEN}@github.com/angoru/kongtest.git HEAD:main'
                }
            }
        }
    }
}
