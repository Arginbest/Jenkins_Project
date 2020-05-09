output "vpc_cidr" {
  value = "${var.vpc_cidr}"
}

# output "vpc_id" {
#   value = "${aws_internet_gateway.gw.vpc_id}"
# }

# output "private_subnets" {
#   value = [
#     "${var.priv_subnet_cidr1}     ${aws_subnet.private_subnet_cidr1.cidr_block}     ${aws_subnet.private_subnet_cidr1.availability_zone}",
#     "${var.priv_subnet_cidr2}     ${aws_subnet.private_subnet_cidr2.cidr_block}     ${aws_subnet.private_subnet_cidr2.availability_zone}",
#     "${var.priv_subnet_cidr3}     ${aws_subnet.private_subnet_cidr3.cidr_block}     ${aws_subnet.private_subnet_cidr3.availability_zone}",
#   ]
# }

# output "public_subnets" {
#   value = [
#     "${aws_subnet.public_subnet_cidr1.id}      ${aws_subnet.public_subnet_cidr1.cidr_block}      ${aws_subnet.public_subnet_cidr1.availability_zone}",
#     "${aws_subnet.public_subnet_cidr2.id}      ${aws_subnet.public_subnet_cidr2.cidr_block}      ${aws_subnet.public_subnet_cidr2.availability_zone}",
#     "${aws_subnet.public_subnet_cidr3.id}      ${aws_subnet.public_subnet_cidr3.cidr_block}      ${aws_subnet.public_subnet_cidr3.availability_zone}",
#   ]
# }

output "region" {
  value = "${var.region}    ${var.region_name}"
}

output "tags" {
  value = "${var.tags}"
}

output "gateway_id" {
  value = "${var.ig_cidr_block}"
}

output "nat_gateway_id" {
  value = "${var.nat_cidr_block}"
}

output "application_endpoint" {
  value = "${var.image_value}"
}

output "owner_name" {
  value = "${var.owner_name}"
}

output "java_version" {
  value = "${var.java_version}"
}

output "jenkins_version" {
  value = "${var.jenkins_version}"
}


