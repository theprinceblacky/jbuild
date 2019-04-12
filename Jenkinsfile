node {
    checkout scm

    def imageName='registry.gitlab.com/xavki/presentations-jenkins'

    docker.withRegistry('https://registry.gitlab.com', 'reg1') {

    def customImage = docker.build("$imageName:version-${env.BUILD_ID}")

    customImage.push()
    }
}

