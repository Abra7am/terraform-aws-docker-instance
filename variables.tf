#As this variable intended to be published publicly and as instance
#can later be changed as per desired input, we leave instance type empty,
#just for default we inputted "t2.micro"
#normally we shoud've put instance type: ...,
#but we left it empty.just by default will be t2.micro
variable "instance_type" {
  type = string
  default = "t2.micro"
}

#TYPE,, in all variables defines which type of input should be 
#used while defining the source.
#for example:variable "image_id" {
#type        = string
#description = "The id of the machine image (AMI) to use for the server."

variable "key_name" {
  type = string
}

variable "num_of_instance" {
  type = number # type is number, see default= 1 !!
  default = 1
}

variable "tag" {
  type = string
  default = "Docker-Instance"
}

variable "server-name" {
  type = string
  default = "docker-instance"
}

variable "docker-instance-ports" {
  type = list(number)
  description = "docker-instance-sec-gr-inbound-rules"
  default = [22, 80, 8080]
}










