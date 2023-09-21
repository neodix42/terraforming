1. Install terraform and put it in your PATH.
2. Update password, access and security keys in variables.tf

```
cd alicloud
terraform init
terraform plan -out out.txt
terraform apply out.txt
terraform destroy
```

Generate ansible inventory for 3 zones
```
terraform plan
terraform apply
terraform output rendered_a
terraform output rendered_b
terraform output rendered_c
```