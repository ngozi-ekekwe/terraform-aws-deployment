### AWS CI/CD deployment with Terraform

## Local terraform setup

export the following env variables
```
  AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID>
  AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY>
  ACCOUNT_ID=<ACCOUNT_ID>
```

### Initialize terraform
- terraform init -var-file=vars.tfvars -backend-config=config/backend-config.tf

### Apply to create infra on AWS
- terraform apply -var-file=vars.tfvars -input=false --lock=false -auto-approve 

### Destroy infra using terraform

- terraform destroy --lock=false  -var-file=vars.tfvars