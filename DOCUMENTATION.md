# How to Run this Project
Spin Up the Docker Containers

$ docker-compose up -d --build

Open your browser on http://localhost:5555 to view the Flower dashboard.


### 1. Project Objective
* Create a Containerised Instance for Django, Redis and Celery 
* Instanciate the processes in the backgound as separate worker procceses
* Create a Log File for monitoring
* Set up Flower to monitor and administer Celery jobs and workers
* Test a Celery task with both unit and integration tests

### 2. The Project Setup

Since we'll need to manage three processes in total (Django, Redis, worker), we'll use Docker to simplify our workflow by wiring them up so that they can all be run from one terminal window with a single command.

From the project root, create the images and spin up the Docker containers:

$ docker-compose up -d --build

### 3. The Logging Aspect

In docker-compose.yml, We have included below section so that the Celery logs are dumped to a log file:

![image](https://user-images.githubusercontent.com/53934661/219595076-82532d82-7236-48c5-a059-eb47119f5bf5.png)

### 3. The Monitoring Dashboard

THe Flower is a lightweight, real-time, web-based monitoring tool for Celery. We are able to monitor currently running tasks, increase or decrease the worker pool, view graphs and a number of statistics, to name a few.

Added below to the requirements.txt:

![image](https://user-images.githubusercontent.com/53934661/219595875-7b40290d-f9ac-4c11-bbdf-d0b91a1615a3.png)

### 4. Testing it out!

$ docker-compose up -d --build

![image](https://user-images.githubusercontent.com/53934661/219597571-c20417c9-5e79-4eb7-b8b6-a1a33cbe1b36.png)

### Decomission the Apps

![image](https://user-images.githubusercontent.com/53934661/219598892-fbae169d-74c8-42e9-9276-c39c48d77c25.png)

docker-compose down
### 5. Minikube Setup

# Configure minikube
$ minikube start
$ eval $(minikube docker-env)
$ minikube dashboard  # Open dashboard in new browser
# Apply Manifests
$ kubectl apply -f postgres/  # See dashboard in browser
$ kubectl apply -f redis/
$ kubectl apply -f django/
$ kubectl apply -f celery/
$ kubectl apply -f flower/
# Show services in browser
$ minikube service django-service  # Wait if not ready
$ minikube service flower-service


### 6. Testing it out!

![image](https://user-images.githubusercontent.com/53934661/219599389-c3f6a255-710c-470a-af16-04739913eea7.png)

# Delete cluster when done
$ minikube delete


### 7. Credits for the Asiignments goes to:

    https://code.tutsplus.com/tutorials/using-celery-with-django-for-background-task-processing--cms-28732
    https://medium.com/google-cloud/deploying-django-postgres-and-redis-containers-to-kubernetes-part-2-b287f7970a33
    https://kubernetes.io/docs/tutorials/stateless-application/guestbook/
    https://markgituma.medium.com/kubernetes-local-to-production-with-django-4-celery-with-redis-and-flower-df48ab9896b7
    https://testdriven.io/blog/django-and-celery/
