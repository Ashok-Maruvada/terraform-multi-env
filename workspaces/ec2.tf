resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0f10b4b0d09399166"]
    #if current workspace is in dev, then terraform.workspace=dev, gives instancee_type value
    instance_type = lookup(var.instance_type, terraform.workspace)
}