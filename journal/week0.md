# Week 0 — Billing and Architecture

## Install AWS CLI
I install AWS CLI using Gitpod. 

In Gitpod I write the commando for change the directory:

```
 cd /workspace
 ```
I download AWS CLI with the next command:
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```
Unzip with the next commmand:
```
 unzip awscliv2.zip
```
The unzip create a directory named AWS. In this directory I install AWS CLI with the next command:
```
sudo ./aws/install
```
I have to install AWS CLI whenever I start Gitpod so I edit the yaml file to install always the packages when I initiate gitpod again. I edit this file with:

```sh
tasks:
  - name: aws-cli
    env:
      AWS_CLI_AUTO_PROMPT: on-partial
    init: |
      cd /workspace
      curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
      unzip awscliv2.zip
      sudo ./aws/install
      cd $THEIA_WORKSPACE_ROOT
``` 
      
**A image like a prove**

## Create a new user.
I login in AWS console like root but it is good practice work with other user by then I create a IAM user with administrator rights and login with this user. 

## Work with AWS CLI
I set the Env Vars using Gitpod and check it with the command: "aws sts get-caller-identity

**A image like a prove**

## AWS Budget and Billing Alarm
Firs I create a directory named AWS2 because the environment hava a directory with the name AWS. In AWS2 I created other directory name **json** and here I create 3 json files necesary for configure the alarm andd budget. 

I created a billing alarm using AWS SNS from AWS CLI using gitpod. Firs I create a Topic named billing-alarm with the next command:
```
aws sns create-topic --name billing-alarm
```
After I suscrib to the topic con mi email using the next command:

```sh
aws sns subscribe \
    --topic-arn TopicARN \
    --protocol email \
    --notification-endpoint my@email.com
```
 
    
I finally created the alarm using the next command:
  ```
  aws cloudwatch put-metric-alarm --cli-input-json file://aws/json/alarm_config.json
  ```
  
After I create the budget with the next command:

```sh
aws budgets create-budget \
    --account-id AccountID \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/budget-notifications-with-subscribers.json
```
**A image like a prove**
    
