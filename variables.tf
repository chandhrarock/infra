################################################################################
# General
################################################################################

variable "environment" {
}

variable "region" {
  default = "eu-central-1"
}

variable "name" {
}

variable "project" {
}

variable "tfstate_bucket" {
}

variable "dns_prefix" {
}

variable "bala_vpc_cidr" {
}

#variable "bala_vpc_secondary_cidr" {
}

variable "bala_vpc_name" {
}

variable "aws_profile_name" {
}

variable "sample_dev_account_id" {
  default = "236859812685"
}

variable "amazon_linux_2_ami" {
  default = "ami-05d34d340fb1d89e5"
}

variable "ci_deployment_role_name" {
  default = "ci-deployment"
}

variable "ci_infra_aws_deployment_role_name" {
  default = "ci-infra-aws-deployment"
}

variable "ci_infra_k8s_deployment_role_name" {
  default = "ci-infra-k8s-deployment"
}

variable "ci_occl_deployment_role_name" {
  default = "ci-occl-deployment"
}

################################################################################
# SSH Keys
################################################################################

variable "coms_public_ssh_key" {
  default = ""
}

variable "rds_operations_public_ssh_key" {
  default = ""
}

################################################################################
# RDS
################################################################################

variable "db_name" {
}

variable "db_username" {
}

variable "db_apply_immediately" {
  default = true
}

variable "db_copy_tags_to_snapshot" {
  default = true
}

variable "db_backup_retention_period" {
  default = 7
}

variable "db_maintenance_window" {
  default = "sun:04:30-sun:05:00"
}

variable "db_allocated_storage" {
}

variable "db_region" {
  default = "eu-central-1"
}

variable "db_instance_class" {
}

variable "db_engine" {
}

variable "db_engine_version" {
}

variable "db_param_group" {
}

variable "db_storage_type" {
}

variable "db_storage_encrypted" {
}

variable "db_multi_az" {
}

variable "db_subnet_group_name" {
}

variable "db_skip_final_snapshot" {
}

variable "db_allow_major_version_upgrade" {
}

variable "db_final_snapshot_identifier" {
}

variable "db_port" {
  default = 5432
}

variable "db_monitoring_interval" {
  default = 0
}

variable "db_backup_window" {
}

variable "db_enabled_cloudwatch_logs_exports" {
  type = list(string)
}

################################################################################
# DNS
################################################################################

variable "coms_domain_name" {
}

################################ Peering

variable "transit_vpc" {
  type = map(string)
}

variable "infra_base_account_id" {
  default = "526347926073"
}

variable "infra_base_vpc_id" {
  default = "vpc-c26bc0aa"
}

variable "infra_base_cidr" {
  default = "172.16.64.0/18"
}

variable "peering_cesp" {
  type = map(string)
}

variable "peering_dev_prod" {
  type = map(string)
}

###########################################
#           Direct Connect
###########################################
variable "dx" {
  type = list(map(string))

  default = [
    {
      virtual_interface_id = "dxvif-fgvl7rnz"
    },
    {
      virtual_interface_id = "dxvif-ffsfogla"
    },
  ]
}

################################################################################
# Common CIDRs
################################################################################

variable "devlan_cidr" {
  default = "10.97.192.0/21"
}

variable "shared_service_cidr" {
  default = "10.170.192.0/20"
}

variable "vpn_cidr" {
  default = "10.109.64.0/18"
}

#variable "dev_bala_vpc_cidr" {
  default = "10.170.111.128/26"
}

###########################################
#          CloudHealth
###########################################

variable "cloudhealth_account_id" {
  default = "454464851268"
}

variable "cloudhealth_external_id" {
  default = "331872d03e5ea9e0933df5d3f418d2"
}

###########################################
#                 Tags
###########################################

variable "ec2_tags_module" {
  default = ["bastion", "ec2_autoscale_static_ip", "eksctl", "gitlab-ci-runner", "rds-operations"]
}

variable "tag_os_amazon_linux_2" {
  default = "AmazonLinux2"
}

variable "tag_os_debian" {
  default = "Debian"
}

###########################################
#               Additional  Tags
###########################################

variable "protectionprofile" {
}

variable "workloadzone" {
}

variable "managedby" {
}

variable "base_tags" {
  type        = map(string)
  description = "Map of base tags which will propagate to the ec2 resources"
  default     = {}
}
