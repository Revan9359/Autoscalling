data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_launch_template" "temp" {
    image_id = var.ami
    name = var.template_Name
    instance_type = var.instance_type
    key_name = var.key_name
    user_data = base64encode (<<-EOF
        #!/bin/bash
        sudo dnf install httpd -y
        sudo systemctl start httpd
        sudo systemctl enable httpd
        echo "Hello, World!" > /var/www/html/index.html
        EOF
    )
    tags = {
        Name = var.template_Name
      
    }
    
}