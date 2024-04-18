# final-diploma-mytodoapp
This repo has different files I used for my final diploma project

1. Inside **/src/index.js** there is the Node.js code - it is a To Do app
2. **Dockerfile** has code needed to build a Docker Image

Files needed for pipeline:    
3. **buildspec.yml** is used as a configuration file for AWS CodeBuild     
4. **appspec.yml** is used as a configuration file for AWS CodeDeploy and the scripts for hooks are inside **scripts** folder:
   - **application_stop.sh** - has scripts for checking and therefore stopping the Node.js service using PM2
   - **after_install.sh** - has scripts used for installing: nvm, node, npm, express and pm2

Minikube files:     
5. **deployment.yml** is a Kubernetes configuration file used to define a Deployment object     
6. **service.yml** is a Kubernetes configuration file used to define a Load Balancer Service object    
7. **ingress.yml** is a Kubernetes configuration file used to define an Ingress object    
8. **nginx.yml** is a Kubernetes configuration file used to define a Deployment and a Service object used for ingress
