node {
    checkout scm

    docker.withRegistry("https://registry.hub.docker.com", 'dockerhub'){
    
        def customImage = docker.build("rania1122/dockerwebapp")
        
        customImage.push()
    }  
}
