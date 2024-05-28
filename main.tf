# main.tf
provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "The AWS region to deploy the MongoDB cluster."
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The instance type for MongoDB nodes."
  default     = "t3.medium"
}

variable "mongo_cluster_size" {
  description = "Number of MongoDB instances in the cluster."
  default     = 3
}

variable "vpc_id" {
  description = "VPC ID where the cluster will be deployed."
}

variable "subnet_ids" {
  description = "List of Subnet IDs in the VPC."
  type        = list(string)
}

variable "key_name" {
  description = "Name of the SSH key pair."
}

variable "ssh_public_key" {
  description = "SSH public key content."
}
