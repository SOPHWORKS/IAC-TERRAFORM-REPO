
output "vpc_id" {
description = "value of vpc"
value = aws_vpc.my_vpc.id
}


output "public_ip" {
description = "public ip of our instance"
value = aws_instance.web.public_ip
}

output "private_ip" {
description = "public ip of our instance"
value = aws_instance.web.private_ip
}