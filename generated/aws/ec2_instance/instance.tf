resource "aws_instance" "tfer--i-002D-0124c63465d1e1025_" {
  ami                         = "ami-08f4efe7e9491f07f"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.small"
  ipv6_address_count                   = "0"
  key_name                             = "eks26"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.94.31"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      mykey = ""
    }

    volume_size = "8"
    volume_type = "gp2"
  }

  security_groups   = ["launch-wizard-6"]
  source_dest_check = "true"
  subnet_id         = "subnet-09a2a85847489ed39"

  tags = {
    mykey = ""
  }

  tags_all = {
    mykey = ""
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-059ee88f5da73e96e"]
}
