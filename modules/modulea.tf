module "server" {
  source = "git::git@github.com:khannaraj/terraformscripts.git//ec2"
  key_name = var.key_name
  tags = var.tags
  ami_id = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  subnet_id_priv = var.subnet_id_priv
  vpc_security_group_ids = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile = var.iam_instance_profile
  root_block_device_volume_size = var.root_block_device_volume_size
  root_block_device_volume_type = var.root_block_device_volume_type
  root_block_device_delete_on_termination = var.root_block_device_delete_on_termination
  root_block_device_tags = var.root_block_device_tags
  tags2 = var.tags2
  root_block_device_tags2 = var.root_block_device_tags2
}


variable "key_name" {
  description = "The EC2 instance key name"
  type        = string
}

variable "tags" {
  description = "The EC2 instance key name"
  type        = string
}

variable "ami_id" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
  type        = string
}

variable "instance_type" {
  description = "The AWS EC2 Instance Type"
  type        = string
}

variable "availability_zone" {
  description = "The AWS EC2 Instance Availability Zone"
  type        = string
}

variable "subnet_id_priv" {
  description = "The AWS EC2 Instance Private Subnet Id"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The AWS EC2 Instance Security Group Id"
  type        = string
}

variable "associate_public_ip_address" {
  description = "The AWS EC2 Instance Public IP address flag"
}

variable "iam_instance_profile" {
  description = "The AWS EC2 Instance IAM Instance Profile"
  type        = string
}

variable "root_block_device_volume_size" {
  description = "The AWS EC2 Instance Root Volume Device Size"
  type        = string
}

variable "root_block_device_volume_type" {
  description = "The AWS EC2 Instance Root Volume Device Type"
  type        = string
}

variable "root_block_device_delete_on_termination" {
  description = "The AWS EC2 Instance Root Volume Device Delete Flag"
  type        = string
}

variable "root_block_device_tags" {
  description = "The AWS EC2 Instance Root Volume Device Tags"
  type        = string
}

variable "tags2" {
  description = "The EC2 instance key name"
  type        = string
}

variable "root_block_device_tags2" {
  description = "The AWS EC2 Instance Root Volume Device Tags"
  type        = string
}
