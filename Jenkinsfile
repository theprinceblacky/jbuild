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
					pipelineContext.dockerContainer = pipelineContext.dockerImage.run('--name run-$BUILD_ID	-p 80:80')
					sh 'docker ps'
	        sh 'curl localhost'
					sh 'docker rm -f run-$BUILD_ID'
		}

		stage('Push') {
					docker.withRegistry('https://registry.gitlab.com', 'reg1') {
					pipelineContext.dockerImage.push('latest')
					}
		}

}

