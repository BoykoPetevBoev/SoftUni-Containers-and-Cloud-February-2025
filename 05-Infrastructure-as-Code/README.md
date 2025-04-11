# Terraform Commands Overview

Formats Terraform configuration files
```
terraform fmt
```

Initializes the Terraform working directory and downloads necessary plugins.
```
terraform init
```

Validates the syntax and configuration of Terraform files.
```
terraform validate
```

Previews the changes Terraform will make to your infrastructure.
```
terraform plan

terraform plan -var-file="values.tfvars"
```

Applies the changes to the infrastructure based on the plan.
```
terraform apply

terraform apply -var-file="values.tfvars"
```

Displays the current state of the infrastructure.
```
terraform show
```

Destroys the infrastructure managed by Terraform.
```
terraform destroy
```
