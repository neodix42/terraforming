1. Install terraform and put it in your PATH.
2. Update password, access and security keys in variables.tf

```
cd alicloud
terraform init
terraform plan -out out.txt
terraform apply out.txt
terraform destroy
```

Generate ansible inventory
```
terraform plan
terraform refresh or apply
terraform output rendered
```