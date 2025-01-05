resource "aws_instance" "my_instance" {
  # count           = var.aws_ec2_instance_count   # meta argument
  for_each        = local.instances
  instance_type   = var.aws_ec2_instance_type
  ami             = data.aws_ami.os_image.id        # var.aws_ec2_ami_id
  security_groups = [aws_security_group.my_sg.name] # interpolation
  key_name        = aws_key_pair.my_key.key_name    # interpolation
  root_block_device {
    volume_size = var.aws_root_volume_size
    volume_type = var.aws_root_volume_type # general purpose
  }
  tags = {
    # Name = var.aws_ec2_instance_name
    Name = each.value
  }

}