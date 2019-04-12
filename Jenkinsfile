node {

    environment {
    	imageName='registry.gitlab.com/xavki/presentations-jenkins'
			IMAGE='${imageName}:version-${env.BUILD_ID}'
		}

    stage('Clone') {
    	checkout scm
		}

		stage('Build') {
					dockerImage = docker.build("${env.IMAGE}",  '.')
          pipelineContext.dockerImage = dockerImage
		}

}

