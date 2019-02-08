# Building LabVIEW NXG Applications using Jenkins
Learn how to set up a Jenkins pipeline that builds LabVIEW NXG applications. With a Jenkins pipeline, you can automate building your applications. This repository provides example applications and a batch script that invokes the LabVIEW NXG command line interface (CLI) to build the applications.

Before completing the tasks below, you must install LabVIEW NXG 3.1 and set up a working Jenkins server on the build machine. Refer to the following resources for help setting up a Jenkins server: [Getting started with Jenkins](https://jenkins.io/doc/pipeline/tour/getting-started/), 
[Getting started with TestStand and Jenkins](http://www.ni.com/tutorial/54118/en/). 

## Creating a New Pipeline
1. In Jenkins, click **New Item** to create a new project. 
2. Enter a name for the project, select **Pipeline** as the type of project, then click **OK**. Jenkins displays the new project.
3. In the **Pipeline** section, set the **Definition** to **Pipeline script from SCM**.
4. In the **SCM** field, select **Git**, then enter the URL of this repository.
5. Save the project. 

## Building the Example Applications
On the Pipeline page for the project, click **Build Now**. You should now see a pipeline view with three stages as the build starts. 
- In the first stage, Jenkins fetches this repository and checks out a working copy. 
- The second and third stages are defined in the Jenkinsfile. Each of these stages calls the build-application.bat script, which invokes the NXG CLI to build the example applications.
