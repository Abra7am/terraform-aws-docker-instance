
#"If there is count function in main.tf then we need to put
#asterix as the number of source(s) can be more than 1.
output "instance_public_ip" {
  value = aws_instance.tfmyec2.*.public_ip
}
#Here for example there is no asterix as count function is not inputted.
#because there is only one SG and hence no count function.
output "sec_gr_id" {
  value = aws_security_group.tf-sec-gr.id
}

output "instance_id" {
  value = aws_instance.tfmyec2.*.id  
}