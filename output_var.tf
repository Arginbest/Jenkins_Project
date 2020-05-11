output "region" {
  value = "${module.jenkins.region}"
}
output "region_name" {
  value = "${module.jenkins.region_name}"
}


# Outputs for VPC
output "vpc_cidr" {
  value = "${module.jenkins.vpc_cidr}"
}
output "vpc_id" {
  value = "${module.jenkins.vpc_id}"
}


output "public_sub1" {
  value = "${module.jenkins.public_sub1}"
}
output "public_sub2" {
  value = "${module.jenkins.public_sub2}"
}
output "public_sub3" {
  value = "${module.jenkins.public_sub3}"
}


output "private_sub1" {
  value = "${module.jenkins.private_sub1}"
}
output "private_sub2" {
  value = "${module.jenkins.private_sub2}"
}
output "private_sub3" {
  value = "${module.jenkins.private_sub3}"
}




output "tags" {
  value = "${module.jenkins.tags}"
}

output "image_value" {
  value = "${module.jenkins.image_value}"
}

output "owner_name" {
  value = "${module.jenkins.owner_name}"
}

output "java_version" {
  value = "${module.jenkins.java_version}"
}

output "jenkins_version" {
  value = "${module.jenkins.jenkins_version}"
}

output "host" {
  value = "${module.jenkins.host}"
}

output "instance_type" {
  value = "${module.jenkins.instance_type}"
}

