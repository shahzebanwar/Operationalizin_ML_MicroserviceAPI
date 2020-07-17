# Operationalizin_ML_MicroserviceAPI
[![<ORG_NAME>](https://circleci.com/gh/shahzebanwar/Operationalizing_ML_MicroserviceAPI.svg?style=svg)](<LINK>)

## Project Summary:
The project's goal is to operationalize a machine learning microservice using kubernetes. The service serves out predictions (inference) about housing prices through API calls. The model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

### Included Files:

- `config.yml`: CircleCI configuration file for running the tests
- `app.py`: Python flask app that serves out predictions (inference) about housing prices through API calls
- `Dockerfile`: Dockerfile for building the image
- `make_prediction.sh`: Send a request to the Python flask app to get a - prediction
- `Makefile`: includes instructions on environment setup and lint tests
- `run_docker.sh`: file to be able to get Docker running, locally
- `run_kubernetes.sh`: file to run the app in kubernetes
- `upload_docker.sh`: file to upload the image to docker

## Requirements:

You should have VirtualBox, Docker and minikube installed before moving onto next section:

- [Virtual Box](https://www.virtualbox.org/wiki/Linux_Downloads)
- [Docker](https://docs.docker.com/engine/install/)
- [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)

## Running the Project:

1. Clone this repository
2. Start the minikube using `minikube start`
3. Go to the cloned folder and doploy the application using Kubernetes script
    ```./run_kubernetes.sh```
4. Check the pod status if it is up and running using
    ``` kubectl get pods```
5. To make prediction just run the scrip file using 
    ```./make_prediction2.sh```

###### Credits: 
This is the 4th Project in the Cloud DevOps Nanodegree @ Udacity