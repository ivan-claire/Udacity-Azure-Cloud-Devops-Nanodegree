# Overview of Building a CI/CD Pipeline
A github repo is built from scratch and a scaffolding (a project generation technique supported by various tools>Github Actions, Azure Pipelines etc) is created with the goal of performing Continous integration and Continous Delivery.
The app is a python based machine learning app using the flask web framework to operationalize a machine learning microservice API.
Using a pre-trained , sklearn model, it serves out predictions through API calls about house prices in Boston according to several features like average rooms in a home etc 

It was broken into 2 parts:
- Github Actions was used along with Makefile,requirements.txt and application code written to perform initial lint, test and install cycle.
- The project was then integrated with Azure Pipelines to enable CD to Azure App Service.


## Project Plan

* Trello board for the project
   https://trello.com/b/G8h4Gzxc/building-a-cicd-pipeline
* Link to a spreadsheet
  https://docs.google.com/spreadsheets/d/1u2_x9ZGDcb9WS20XVNg2LHHwdFDauffIb3dVlpIkN24/edit?usp=sharing

## Instructions

![Project Architecture Diagram](https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/architecture.png)

Above is the architectural diagram showing how the project works.
After the code is pushed on git, Github Actions is launched to run the Makefile tests and linting tests 
in the project. This is the CI stage. Once this is succesful, the CD stage in the azure pipelines is run 
and the code is deployed on an AppService in the azure portal.
From the terminal of Azure Cloud shell, the machine learning prediction model is run to send HTTP request to 
the running app service and it returns the result of the prediction of house prices in Boston.

To run this code, 
   - create an azure app service on your portal. I called mine cicdservice
   - clone the project
   - modify the Makefile tests to suit whatever you want to test
   - modify the Requirements file for your requirements
   - Push the code to Git and see that Github actions passes
   - Create a project organization on Azure DevOps and activate azure pipelines on your git repo
   - Generate an sshkey using keygen command
   - Replace the content of the public key in azure pipelines with your key
   - Run azure pipelines.
   - Go to the azure cloud shell and clone your code
   - In app.py replace the url of the appservice, with your url and then run ./make_predictions.sh shell script
   - The prediction should be returned

## Some Screenshots

* Project running on Azure App Service
![Project running on Azure App Service](https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/AppServiceRunning.PNG)

* Project cloned into Azure Cloud Shell
![Project running on Azure App Service](https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/ClonedCode.PNG)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![Project running on Azure App Service]https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/Makefile%20tests.PNG)

* Successful run of the project in Azure Pipelines
![Project running on Azure App Service](https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/SuccessfulRuninAzurePipelines.PNG)

* Running Azure App Service
![Project running on Azure App Service](https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/ClonedCode.PNG)

* Successful prediction from deployed flask app in Azure Cloud Shell> 
![Project running on Azure App Service](https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/Screenshots/predictionResults.PNG)

## Enhancements

- Improve the project by adding more tests in the Makefile
- Returning the average predictions using the values of 10 predictions
- Deploy containerized app to kubernetes (AKS service)

## Demo 
<video width="320" height="240" controls>
  <source src="https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P2-Deploying-CICD-Pipeline-in-Azure/cicddemo.mp4" type="video/mp4">
</video>


