bucket = "prod-tfvars"
# key name is to specify remote state files in aws- change the key name according to infra creation
key    = "multi-env-tfvars"
region = "us-east-1"
dynamodb_table = "prod-tfvars-locking"