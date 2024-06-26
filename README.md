# Source code and other configuration files 
This files are used for my final diploma project and are also stored in a repository in AWS CodeCommit. Every commit in that repository triggers the release of the pipeline. The Terraform code used to provision the infrastructure for the pipeline is here: https://github.com/Sebastianutcn/pipeline-terraform 

## Node.js app
1. Inside [`/src/index.js`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/src/index.js) there is the Node.js code - it is a To Do app

## Docker
2. [`Dockerfile`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/Dockerfile) has code needed to build a Docker Image

## Files needed for pipeline:    
3. [`buildspec.yml`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/buildspec.yml) is used as a configuration file for AWS CodeBuild     
4. [`appspec.yml`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/appspec.yml) is used as a configuration file for AWS CodeDeploy and the scripts for hooks are inside **scripts** folder:
   - [`application_stop.sh`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/scripts/application_stop.sh) - has scripts for checking and therefore stopping the Node.js service using PM2
   - [`after_install.sh`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/scripts/after_install.sh) - has scripts used for installing: nvm, node, npm, express and pm2

## Minikube files:     
5. [`deployment.yml`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/deployment.yml) is a Kubernetes configuration file used to define a Deployment object     
6. [`service.yml`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/service.yml) is a Kubernetes configuration file used to define a Load Balancer Service object    
7. [`ingress.yml`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/ingress.yml) is a Kubernetes configuration file used to define an Ingress object    
8. [`nginx.yml`](https://github.com/Sebastianutcn/final-diploma-mytodoapp/blob/main/nginx.yml) is a Kubernetes configuration file used to define a Deployment and a Service object used for ingress
