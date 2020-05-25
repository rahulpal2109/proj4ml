[![CircleCI](https://circleci.com/gh/rahulpal2109/proj4ml.svg?style=svg)](https://circleci.com/gh/rahulpal2109/proj4ml)


Udacity: Operationalize a Machine Learning Microservice API 
============================================================

Summary of the project
-----------------------
We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. This project is intended to test our ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls.

Instructions on how to run the Python scripts and web app
----------------------------------------------------------
To spin up a Docker image: ./run_docker.sh
To upload image to DockerHub: ./upload_docker.sh
To spin up a pod and run the application in it: ./run_kubernetes.sh
To make predictions: ./make_predictions.sh

Files/folders in the repository:
---------------------------------
1) .circleci/config.yml
2) model_data: contains the model data used to make predictions.
3) output_txt_files/: this folder contains the log outputs. docker_out.txt contains the logs obtained while running the application using a Docker image. kubernetes_out.txt contains logs which were ontained while running the app by orchestrating with Kubernetes.
4) Dockerfile: contains the commands to spin up a Docker image of the application.
5) Makefile: contains several commands used to set up the virtual environment, install dependencies, run linting etc. We can just run 'make <job_name>' in order to execute a job.
6) app.py: this is the Python Flask app.
7) make_predictions.sh: the file executed to make predictions.
8) requirements.txt: contains the dependencies required to be installed .
9) run_docker.sh: contains the commands to create an image, show the list of images available and run the application.
10) run_kubernetes.sh: contains commands to spin up a pod using the Docker image and run it in the cluster.
11) upload_docker.sh: contains commands to upload a created image to DockerHub.