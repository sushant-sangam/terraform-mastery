# Outputs when using 'count'
#
# In this case, Terraform creates multiple instances using the 'count' argument, 
# which returns a list of resources. We can refer to attributes of all instances 
# by using the [*]  operator:
#

# Uncomment the following blocks if you are using the `count` meta-argument to create instances.

# output "aws_ec2_public_ip" {
#   value = aws_instance.my_instance[*].public_ip
# }

# output "aws_ec2_private_ip" {
#   value = aws_instance.my_instance[*].private_ip
# }

# Outputs when using 'for_each'
#
# When using 'for_each', Terraform creates a map of instances keyed by a unique 
# identifier. To output attributes, we use a 'for' expression to build a map of 
# keys to values. Each key in the output map corresponds to the key from 'for_each'.

# Use these outputs if the "aws_instance.my_instance" resource is created with the "for_each" meta-argument.

output "aws_ec2_public_ip" {
  value = {for key, instance in aws_instance.my_instance : key => instance.public_ip}
}

output "aws_ec2_private_ipp" {
  value = {for key, instance in aws_instance.my_instance : key => instance.private_ip}
}
