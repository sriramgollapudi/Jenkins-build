#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Terraform Init") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform init -no-color"
                    }
                }
            }
        }
        stage("Terraform Plan") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform plan -no-color"
                    }
                }
            }
        }
        stage("Terraform Destroy") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform destroy -auto-approve -no-color"
                    }
                }
            }
        }
        // stage("Terraform Apply") {
        //     steps {
        //         script {
        //             dir('2-terraform-eks-deployment') {
        //                 sh "terraform apply -auto-approve -no-color"
        //             }
        //         }
        //     }
        // }
        // stage("Deploy Nginx App to EKS") {
        //     steps {
        //         script {
        //             dir('3-nginx-app') {
        //                 sh "aws eks update-kubeconfig --name my-eks-cluster"
        //                 sh "kubectl apply -f nginx-deployment.yaml"
        //                 sh "kubectl apply -f nginx-service.yaml"
        //             }
        //         }
        //     }
        // }
    }
}

