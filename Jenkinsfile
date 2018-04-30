
  node {
    def imageRepo = "seldonio-201011"
    def imageName = "sklearn-ci"
    def imageVersion = "latest"
    def modelName = "IrisClassifier"
    checkout scm
    sh("docker version")
    sh("uname -a")
    sh("lsb_release -a")  
    stage 'Build image'
      sh("docker build \
        --build-arg IMAGE_REPO=${imageRepo} \
        --build-arg IMAGE_VERSION=${imageVersion} \
        --build-arg MODEL_NAME=${modelName} \
        --tag gcr.io/${imageRepo}/${imageName}:${imageVersion} .")
    stage 'Push image to registry'
    sh("gcloud auth print-access-token | docker login -u oauth2accesstoken --password-stdin https://gcr.io")
    sh("docker push gcr.io/${imageRepo}/${imageName}:${imageVersion}")
    stage "Deploy Application"
    switch (env.BRANCH_NAME) {
      case "master":
          sh("kubectl --namespace=seldon apply -f sklearn_iris_deployment.json")
          break
        }
  }
