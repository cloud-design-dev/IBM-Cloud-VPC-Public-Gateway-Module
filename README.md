# Public Gateway Module for IBM CLoud VPC 
Terraform module for creating a VPC compute instance in IBM Cloud. 

## Usage
If you need to include a Public Gateway in your IBM Cloud VPC deployment you can use the following code:

```
module public_gateway {
  source         = "git::https://github.com/cloud-design-dev/ibm-vpc-public-gateway-module.git"
  name           = var.name
  zone           = var.zone
  vpc_id         = var.vpc_id
  resource_group_id = var.resource_group
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource\_group\_id | ID of the resource group to associate with the public gateway | `string` | n/a | yes |
| vpc\_id | ID of the VPC where to create the public gateway| `string` | n/a | yes |
| name | Name of the public gateway | `string` | n/a | yes |
| zone | VPC zone where the public gateway will be created.| `string` | n/a | yes |
| tags | List of tags to add on all created resources | `list(string)` | `[]` | no |
| floating\_ip\_id | The ID of the Floating IP to attach to the public gateway.| `string` | n/a | no |
| floating\_ip\_address | The address of the Floating IP to attach to the public gateway.| `string` | n/a | no |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of the public gateway |
| floating\_ip\_id | ID of the floating IP assigned to the gateway |
| floating\_ip\_address | Address of the floating IP assigned to the gateway |

