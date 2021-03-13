# Public Gateway Module for IBM CLoud VPC 
Terraform module for creating a VPC compute instance in IBM Cloud. 

## Usage
If you need to include a Public Gateway in your IBM Cloud VPC deployment you can use the following code:

```
module public_gateway {
  source         = "git::https://github.com/cloud-design-dev/IBM-Cloud-VPC-Public-Gateway-Module.git"
  name           = var.name
  zone           = var.zone
  vpc            = var.vpc
  resource_group = var.resource_group
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource\_group | ID of the resource group to associate with the public gateway | `string` | n/a | yes |
| vpc | ID of the VPC where to create the public gateway| `string` | n/a | yes |
| name | Name of the public gateway | `string` | n/a | yes |
| zone | VPC zone where the public gateway will be created.| `string` | n/a | yes |
| tags | List of tags to add on all created resources | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of the public gateway |
| floating\_ip\_id | ID of the floating IP assigned to the gateway |
| floating\_ip\_address | Address of the floating IP assigned to the gateway |

