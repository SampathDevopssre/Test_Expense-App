resource "aws_instance" "frontend" {
  ami                         = data.aws_ssm_parameter.al2023_ami.value
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  key_name                    = var.key_name

  vpc_security_group_ids = [
    aws_security_group.frontend.id
  ]

  tags = {
    Name = "${local.name_prefix}-frontend"
  }
}

resource "aws_instance" "backend" {
  ami                         = data.aws_ssm_parameter.al2023_ami.value
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  key_name                    = var.key_name

  vpc_security_group_ids = [
    aws_security_group.backend.id
  ]

  tags = {
    Name = "${local.name_prefix}-backend"
  }
}

resource "aws_instance" "mysql" {
  ami                         = data.aws_ssm_parameter.al2023_ami.value
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  key_name                    = var.key_name

  vpc_security_group_ids = [
    aws_security_group.mysql.id
  ]

  tags = {
    Name = "${local.name_prefix}-mysql"
  }
}
