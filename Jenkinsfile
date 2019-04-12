def pipelineContext = [:]
node {

    environment {
    	registryProjet='registry.gitlab.com/xavki/presentations-jenkins'
			IMAGE='${registryProjet}:version-${env.BUILD_ID}'
		}

    stage('Clone') {
    			checkout scm
		}

		stage('Build') {
					dockerImage = docker.build("${env.IMAGE}",  '.')
          pipelineContext.dockerImage = dockerImage
		}
	
		stage('Run') {
					pipelineContext.dockerContainer = pipelineContext.dockerImage.run()
					sh 'docker ps'
	        sh 'curl localhost'

		}

}

