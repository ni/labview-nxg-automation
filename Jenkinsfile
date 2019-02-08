pipeline {
	agent any
	
	stages {
		stage('Build Word Counter') {
			steps {
				bat '"%WORKSPACE%\\scripts\\build-application.bat" "Word Counter.gcomp"'
			}
		}
		stage('Build Word or Character Counter') {
			steps {
				bat '"%WORKSPACE%\\scripts\\build-application.bat" "Word or Character Counter.gcomp"'
			}
		}
	}
}
	