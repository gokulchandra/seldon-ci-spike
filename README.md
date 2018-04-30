SeldonIO Spike
====================

Scope: 
========
Describes the files of the project. Does not include information for setup of pipeline.

Directory Structure:
=====================
1. `dependencies-image/Dockerfile` - Creates the required base image with all the dependencies to run models(Reduces time by 80% to build image). 

2. `custom-jenkins-slave-image` - Creates a base image for the slave packaged with docker and kubectl. I'm guessing Docker is not required, one could remove it and try. (Fingers crossed)

3. `IrisClassifier.py` - Python model for training classifier.

4. `sklearn_iris_deployment.json` - Kubernetes config to deploy the model using `SeldonIO`

5. `train_iris.py` - Script to train the model

