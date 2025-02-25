resource "aws_instance" "nginx_instance" {
  ami = var.ami_id
  instance_type = var.backend_instance_type
  key_name = var.key_name
  iam_instance_profile = var.iam_instance_profile
  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }
  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install -y nginx
            sudo systemctl start nginx
            sudo systemctl enable nginx
            EOF

}