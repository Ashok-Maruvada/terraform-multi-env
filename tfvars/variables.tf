variable "instance_names" {
  type = map
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "goadd.fun"
}

variable "zone_id" {
    default = "Z0886179189CALGJIR20N"
}

variable "environment" {
  
}