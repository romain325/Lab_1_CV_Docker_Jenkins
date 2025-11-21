pipeline {
      agent any
      stages{

          // Création image
        stage('Etape 0 stop and delete mon container') {
            steps {
                sh 'docker stop cv_mezghich_cont'
                sh 'docker rm cv_mezghich_cont'
            }
            post {
                success {
                    echo "====++++Container stopped and delete with success++++===="
                }
                failure {
                    echo "====++++Docker failed to stop/delete my container++++===="
                }
            }
        }
        // Création image
        stage('Etape 1 Création de  image docker') {
            steps {
                sh 'docker build -t cv_mezghich .'
            }
            post {
                success {
                    echo "====++++Docker image created with success++++===="
                }
                failure {
                    echo "====++++Docker image failed++++===="
                }
            }
        }

          // Création image
        stage('Etape 2 Lancer un container de cette image') {
            steps {
                sh 'docker run -d -p 8081:80 --name cv_mezghich_cont cv_mezghich'
            }
            post {
                success {
                    echo "====++++Container started with success++++===="
                }
                failure {
                    echo "====++++Failed to start Container++++===="
                }
            }
        }
      }
}