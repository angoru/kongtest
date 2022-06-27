pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                sh 'ls -la'
                sh 'docker build -t localdeck:v1 .'
                sh 'docker run --rm --env DECK_KONG_ADDR=http://10.152.183.31:8001  localdeck:v1 sync'
                // sh 'git add .'
                // sh 'git commit -a -m "new kong dump"'
                // withCredentials([string(credentialsId: 'git_kong', variable: 'TOKEN')]) {
                //     sh 'git push https://${TOKEN}@github.com/angoru/kongtest.git HEAD:main'
                // }
            }
        }
    }
}
