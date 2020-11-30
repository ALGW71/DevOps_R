# DevOpsR&Py
A repo to learn basic CI/CD pipelines.

## Thoughts on the plan of action
* The goal is to have examples of three CI/CD pipelines that use Docker.
* Travis CI, GitHub Actions and Jenkins.
* These CI/CD pipelines must replicate the hypothetical environments of DEV, TEST and PROD.
* Each environment must be contained in a Docker container.
* On pushing to GitHub: 
    - the code must be linted, checked and run in DEV.
    - upon success the code is run in TEST using test data and longer more intense processes.
    - following that success the code is passed to DEV and specific tests are run there (is this a place for final tests?).
    
## Questions I have about Docker containers and Jenkins
* Is it a docker "image" or "container" that is being run?
* If the docker environments are written in a docker file - where do the scripts and code base lie?
* If Jenkins sits inside a Docker container - how does it reach outside of itself and spin up Docker containers?

## To Read
> https://itnext.io/docker-inside-docker-for-jenkins-d906b7b5f527

> https://technology.riotgames.com/news/putting-jenkins-docker-container

> https://www.jenkins.io/doc/book/installing/docker/

> https://stackoverflow.com/questions/32163955/how-to-run-shell-script-on-host-from-docker-container

> https://www.educative.io/edpresso/what-is-the-docker-add-command

> https://stackoverflow.com/questions/54437030/how-can-i-create-a-docker-image-to-run-both-python-and-r

## Current thoughts
* Have Jenkins on the host system - the developer for example will have Jenkins on their own computer.
* Have Docker on the host system.
* The CI/CD pipeline should initiate the docker container with the Docker file in the repo.
* The GitHub repo should be cloned onto that container.
* The R/Python versions and required packages should be detailed in the code - and installed on the container.
* Linting and basic code tests should take place.
* Larger tests should take place using test data within an Amazon S3 bucket (how do you access this without including a password in the code).

## Future
* Expand the process using AWS and cloud formation scripts.
* Expand the process with Kubernetes.

## Demo ideas
* Live data analysis.
* Deploy a live change and watch results change live.
* System must be online.
* Seemless change.
* Red flag - something wrong - update on way.
