# ---------------------------------------------------------------------------------------------------
# Global Variables
# ---------------------------------------------------------------------------------------------------

// Required
variable "aws_region" {
  description = "The region for this deployment"
  type        = "string"
}

variable "client_name" {
  description = "Name of the client"
  type        = "string"
}

variable "environment_name" {
  description = "name of the environment"
  type        = "string"
}

variable "hosted_zone_name" {
  description = "name of the hosted name"
  type        = "string"
}

variable "use_artifactory" {
  description = "Set to true if using artifactory for docker registry"
  type        = "string"
}

# ---------------------------------------------------------------------------------------------------------------------
# ECS Variables
# These variables that contain information about ECS
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_min_size" {
  description = "Miniman number of instances in a cluster"
  type        = "string"
  default     = "3"
}
variable "cluster_desired_size" {
  description = "The desired number of instances in a cluster"
  type        = "string"
  default     = "4"
}

variable "cluster_max_size" {
  description = "Maximum number of instances in a cluster"
  type        = "string"
  default     = "6"
}

variable "cluster_instance_type" {
  description = "The type of EC2 instance to run for each of the ECS Cluster's EC2 Instances (e.g. t2.medium)."
  type        = "string"
  default     = "t2.large"
}

# ---------------------------------------------------------------------------------------------------
# DNS Prefix
# ---------------------------------------------------------------------------------------------------

variable "alb_domain_prefix" {
  description = "The domain prefex for the alb domain"
  type        = "string"
  default     = "alb"
}

variable "custom_sub_domain" {
  description = "The subdomain. This will be put infront of the hosted zone. By default this will be 'apig'."
  type        = "string"
  default     = ""
}

# ---------------------------------------------------------------------------------------------------
# VPC Variables
# ---------------------------------------------------------------------------------------------------

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = "string"
}

variable "owner_account_id" {
  description = "The AWS account id of the owner"
  type        = "string"
  default     = ""
}

variable "owner_vpc_id" {
  description = "The vpc id of the owner of the vpc peering"
  type        = "string"
  default     = ""
}

variable "owner_vpc_cidr" {
  description = "The CIDR block for the owner VPC."
  type        = "string"
  default     = ""
}

# ---------------------------------------------------------------------------------------------------
# Provisioner Variables
# ---------------------------------------------------------------------------------------------------

variable "credentials_file_path" {
  description = "The location of the creditionals file"
  type        = "string"
  default     = "~/.aws/credentials"
}

variable "credentials_profile" {
  description = "The name of the profile for the deployment of this script"
  type        = "string"
  default     = "default"
}