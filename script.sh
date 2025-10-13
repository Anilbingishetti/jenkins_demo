pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // ✅ Replace this with your actual GitHub repository URL
                git branch: 'main', url: 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('List Files') {
            steps {
                echo 'Listing files in workspace...'
                sh 'ls -l'
            }
        }

        stage('Compile Java Code') {
            steps {
                echo 'Compiling Java files...'
                // ✅ Replace Main.java with your actual file name
                sh 'javac Main.java'
            }
        }

        stage('Run Java Program') {
            steps {
                echo 'Running Java program...'
                // ✅ Replace Main with your main class name (without .java)
                sh 'java Main'
            }
        }
    }

    post {
        success {
            echo '✅ Java program executed successfully!'
        }
        failure {
            echo '❌ Build failed! Check logs for details.'
        }
    }
}
