pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('rania-dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build --tag rania1122/dp-alpine:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push rania1122/dp-alpine:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
