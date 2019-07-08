provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "${pathexpand(var.credentials_file_path)}"
  profile                 = "${var.credentials_profile}"
}

module "core" {
  source = "git::ssh://git@github.dxc.com/Digital-Insurance/Infrastructure//Core?ref=v2.0.1"

  client_name           = "${var.client_name}"
  cidr_block            = "${var.cidr_block}"
  environment_name      = "${var.environment_name}"
  hosted_zone_name      = "${var.hosted_zone_name}"
  owner_account_id      = "${var.owner_account_id}"
  owner_vpc_id          = "${var.owner_vpc_id}"
  owner_vpc_cidr        = "${var.owner_vpc_cidr}"
  cluster_min_size      = "${var.cluster_min_size}"
  cluster_desired_size  = "${var.cluster_desired_size}"
  cluster_max_size      = "${var.cluster_max_size}"
  cluster_instance_type = "${var.cluster_instance_type}"

  // DNS Prefix
  alb_domain_prefix     = "${var.alb_domain_prefix}"
  custom_sub_domain     = "${var.custom_sub_domain}"
}