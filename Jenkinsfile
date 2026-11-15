pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    
    stages {
        stage('Checkout Code') {
            steps {
                dir('terraform') {
                    git branch: 'main', url: 'https://github.com/prabalgarg1/aws-terraform-jenkins-pipeline.git'
                }
            }
        }
        
        stage('Terraform Init & Plan') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform init'
                        sh 'terraform plan -out=tfplan'
                    }
                }
            }
        }
        
        stage('Approval') {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    input message: 'Do you want to apply the Terraform plan?', ok: 'Proceed'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform apply -auto-approve tfplan'
                    }
                }
            }
        }
    }
}
