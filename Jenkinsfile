pipeline {
    agent any
    stages {
        stage("Checkout") {
            steps {
                // Jenkins will checkout the repo automatically
                git branch: 'master', url: 'https://github.com/vineethakondepudi/Train-Ticket-Reservation-System.git'
            }
        }
        stage("Build & Package") {
            steps {
                sh "mvn clean package"
            }
        }
        stage("Build Docker Image") {
            steps {
                sh "docker build -t trainbook-app ."
            }
        }
        stage("Deploy") {
            steps {
                sh "docker rm -f trainbook-container || true"
                sh "docker run -d --name trainbook-container -p 8082:8080 trainbook-app"
            }
        }
    }
}
