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

