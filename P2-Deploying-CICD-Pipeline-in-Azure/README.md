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

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:


* Project running inside a Docker container

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful run of the project in Azure Pipelines

* Running Azure App Service

* Successful prediction from deployed flask app in Azure Cloud Shell> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


