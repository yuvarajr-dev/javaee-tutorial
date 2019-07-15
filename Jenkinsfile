def CONTAINER_NAME="tomcat"
def CONTAINER_TAG="latest"
def DOCKER_HUB_USER="yuvarajmindtree"
def HTTP_PORT="8090"

node {

    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        def mavenHome  = tool 'myMaven'
        env.PATH = "${dockerHome}/bin:${mavenHome}/bin:${env.PATH}"
    }

    stage('Checkout') {
        checkout scm
    }

    stage('Build'){
        sh "mvn clean package"
    }

    stage('Sonar'){
        try {
            sh "mvn sonar:sonar"
        } catch(error){
            echo "The sonar server could not be reached ${error}"
       }
     }

    stage("Image Prune"){
       imagePrune(CONTAINER_NAME)
    }

    stage('Image Build'){
        imageBuild(CONTAINER_NAME, CONTAINER_TAG)
    }

    stage('Push to Docker Registry'){
        withCredentials([usernamePassword(credentialsId: 'dockerHubAccount', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
            pushToImage(CONTAINER_NAME, CONTAINER_TAG, USERNAME, PASSWORD)
        }
    }
    stage('Copy requiredfile to deployment'){
        sshagent (credentials: ['SSH-pass']) {
           sh "scp -o StrictHostKeyChecking=no ./target/giit.war devopsadmin@gjndo7362dns2.eastus2.cloudapp.azure.com:./javaee-tutorial/tomcat/"
  }
    stage('Run App'){
        sh "ssh -o StrictHostKeyChecking=no "cd ~/javaee-tutorial && docker-compose up"
}
}
}

def imagePrune(containerName){
   try {
       sh "docker image prune -f"
       sh "docker stop $containerName"
   } catch(error){}
}

def imageBuild(containerName, tag){
    sh "docker build -t $containerName:$tag  -t $containerName --pull --no-cache ."
    echo "Image build complete"
}

def pushToImage(containerName, tag, dockerUser, dockerPassword){
    sh "docker login -u $dockerUser -p $dockerPassword"
    sh "docker tag $containerName:$tag $dockerUser/$containerName:$tag"
    sh "docker push $dockerUser/$containerName:$tag"
    echo "Image push complete"
}

//def runApp(containerName, tag, dockerHubUser, httpPort){
//    sh "docker pull $dockerHubUser/$containerName"
    //sh "docker run -d --rm -p $httpPort:$httpPort --name $containerName $dockerHubUser/$containerName:$tag"
//    sh "docker-compose up --name $containerName $dockerHubUser/$containerName:$tag"
//    echo "Application started on port: ${httpPort} (http)"
//}
