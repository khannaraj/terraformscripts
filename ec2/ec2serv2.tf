
resource "aws_instance" "demo_instance2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone

  subnet_id              = var.subnet_id_priv
  key_name               = var.key_name
  vpc_security_group_ids = [ var.vpc_security_group_ids ]
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile   = var.iam_instance_profile

  root_block_device {
     volume_size                 = var.root_block_device_volume_size
     volume_type                 = var.root_block_device_volume_type
     delete_on_termination       = var.root_block_device_delete_on_termination
     tags                        = { Name=var.root_block_device_tags2 }
  }


    user_data = <<EOF
    #     #! /bin/bash
    apt-get update
    EOF

  tags = {
    Name = var.tags2
  }
}
