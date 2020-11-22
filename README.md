# DevOps_R
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
    
## Questions I have about Docker containers and Jenkins.
* Is it a docker "image" or "container" that is being run?
* If the docker environments are written in a docker file - where do the scripts and code base lie?
* If Jenkins sits inside a Docker container - how does it reach outside of itself and spin up Docker containers?

## To Read:
> https://itnext.io/docker-inside-docker-for-jenkins-d906b7b5f527

> https://technology.riotgames.com/news/putting-jenkins-docker-container

> https://www.jenkins.io/doc/book/installing/docker/
