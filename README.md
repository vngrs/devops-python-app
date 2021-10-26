# devops-python-app
This application is a simple web application that keeps the scores of devops and prints it to the screen. The application was developed with python and was used flask web framework. Mysql is used as database. The libraries required for the application are also available in requirement.txt.

The application contains docker container. The Docker image runs on Alpine Linux. Kubernetes engine is used for container orchestration.

Two separate branches were created for the application. One of them is the local branch and the other is the main branch. The application developer develops and tests the code on its own environment. It then merges the changes into the main branch. The change on the main branch is automatically detected and deployment is made to the product environment.

Kubernetes secrets and configMaps are used for application variables on product environment. In the local development environment, the variables are kept on the OS environment variable.

Google cloud build is used for CI/CD pipeline process. When a change is detected in the main branch, cloud build creates a new docker image and deploys the new image to kubernetes.
