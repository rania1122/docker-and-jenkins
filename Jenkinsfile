pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('Dockerhub-creds-rania')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t rania1122/nodeApp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push rania1122/nodeApp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
