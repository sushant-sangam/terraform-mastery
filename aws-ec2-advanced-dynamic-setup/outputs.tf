output aws_ec2_public_ip {
  value = aws_instance.my_instance[*].public_ip
}

output aws_ec2_private_ip {
  value = aws_instance.my_instance[*].private_ip
}
