# 🚀 Provisioning the Amazon EKS cluster using Terraform -4th

✨This repository containe the code of terrafor files. which we can use to provision Amazon EKS cluster.

## 🏠 Architecture
![Architecture of the application](architecture.gif)

## 🖥️ Tech Stack
- Reactjs

## 💶 Notes and Links
**I've divided my Blog into four parts**

This is the 2nd Part or blog

- 1st Blog: [🔗 Links](https://www.showwcase.com/show/35840/deploying-dockerized-app-on-aws-eks-cluster-using-argocd-and-gitops-methodology-with-circleci)

- 2nd Blog: [🔗 Links](https://www.showwcase.com/show/35778/provisioning-the-amazon-eks-cluster-using-terraform)


- 3rd Blog: [🔗 Links](https://www.showwcase.com/show/35857/setup-pipeline-using-circleci-update-github-kubernetes-manifest-repo-and-push-image-on-docker)

- 4th Blog: [🔗 Links](https://www.showwcase.com/show/35858/install-argocd-on-the-eks-cluster-and-configure-sync-with-github-manifest-repository)



## 🖥️ Installation of Terraform

**Note**: Follow blog to Install the Terraform and other dependency. [Terrafrom](https://developer.hashicorp.com/terraform/downloads)

1️⃣ Clone the repo first
```sh
git clone https://github.com/AnkitJodhani/kube_terraform-4thWeekOfCloudOps.git
```
2️⃣ let install dependency to deploy the application 
```sh
cd kube_terraform-4thWeekOfCloudOps/todo-list-app
terraform init
```

3️⃣ edit below file accoding to your configuration
```sh
vim kube_terraform-4thWeekOfCloudOps/todo-list-app/backend.tf
```
add below code in `kube_terraform-4thWeekOfCloudOps/todo-list-app/backend.tf`
```sh
terraform {
  backend "s3" {
    bucket = "BUCKET_NAME"
    key    = "backend/FILE_NAME_TO_STORE_STATE.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamoDB_TABLE_NAME"
  }
}
```
### 🏠Lets setup the variable for our Infrastructure
create one file with the name of `terraform.tfvars` inside `kube_terraform-4thWeekOfCloudOps/todo-list-app` and add below conntent into that file.
```javascript
REGION       = "us-east-1"
PROJECT_NAME = "Todo-App-EKS"

VPC_CIDR         = "192.168.0.0/16"
PUB_SUB_1_A_CIDR = "192.168.0.0/18"
PUB_SUB_2_B_CIDR = "192.168.64.0/18"
PRI_SUB_3_A_CIDR = "192.168.128.0/18"
PRI_SUB_4_B_CIDR = "192.168.192.0/18"
```

Please take note that the above file is crucial for setting up the infrastructure, so pay close attention to the values you enter for each variable.

it's time to build the infrastructure 


The below command will tell you what terrafrom is going to create for you.
```
terraform plan
```
✨Finally, HIT the below command to create the infrastructure...
```
terraform apply
```
type `yes`, it will prompt you for permission.



**This blog containe Three GitHub repository**
- Application code repo    ➡️ containe application code [Links](https://github.com/AnkitJodhani/kube_manifest-4thWeekOfCloudOps.git)

- Terraform code repo      ➡️ Provisioning Amazon EKS Cluster using Terraform. this one

- Kubernetes manifest repo ➡️ Containe manifest files [Links](https://github.com/AnkitJodhani/kube_manifest-4thWeekOfCloudOps.git)


If you want to learn how i created this project, please go through my blogs. I've shared link of all the blogs above.👆


**Thank you so much for reading..😅**

[![Provisioning EKS cluster using terraform](https://project-assets.showwcase.com/110249/1688914154356-AWS%2520EKS.gif)](https://www.showwcase.com/show/35778/provisioning-the-amazon-eks-cluster-using-terraform)

[![Setup pipeline using CircleCI, update GitHub Kubernetes manifest repo and push image on Docker](https://project-assets.showwcase.com/110249/1688975395510-git%252Bkubernetes%252Bcircleci.gif)](https://www.showwcase.com/show/35857/setup-pipeline-using-circleci-update-github-kubernetes-manifest-repo-and-push-image-on-docker)

[![Install ArgoCD on the EKS cluster and configure sync with GitHub manifest repository](https://project-assets.showwcase.com/110249/1688982849073-argocd_sync.gif)](https://www.showwcase.com/show/35858/install-argocd-on-the-eks-cluster-and-configure-sync-with-github-manifest-repository)


