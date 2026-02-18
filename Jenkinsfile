pipeline {
  agent any

  environment {
    TF_IN_AUTOMATION     = 'true'
    ARM_CLIENT_ID        = credentials('ARM_CLIENT_ID')
    ARM_CLIENT_SECRET    = credentials('ARM_CLIENT_SECRET')
    ARM_SUBSCRIPTION_ID  = credentials('ARM_SUBSCRIPTION_ID')
    ARM_TENANT_ID        = credentials('ARM_TENANT_ID')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/SashankReddy14/terraform.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init -input=false'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -input=false -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -input=false -auto-approve tfplan'
      }
    }
  }
}
