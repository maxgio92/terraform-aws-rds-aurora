# terraform-aws-rds-aurora

Terraform module that manages AWS Aurora cluster.

This module creates an:

- RDS Cluster
- RDS Cluster Instance
- RDS Cluster parameter group
- DB Parameter group
- DB Subnet Group


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allowed\_security\_groups | The security groups allowed to communicate with the cluster | list | n/a | yes |
| apply\_immediately | Determines whether or not any DB modifications are applied immediately, or during the maintenance window | string | `"false"` | no |
| cluster\_parameter\_group\_family | The custom cluster parameter group's family | string | `""` | no |
| cluster\_parameter\_group\_name | The name of the cluster parameter group to use | string | `""` | no |
| cluster\_parameters | A list of cluster parameter maps to apply to the custom cluster parameter group | list | `<list>` | no |
| create\_cluster\_parameter\_group | True to create a custom cluster parameter group | string | `"false"` | no |
| create\_instance\_parameter\_group | True to create a custom parameter group | string | `"false"` | no |
| database\_name | The name of the database | string | n/a | yes |
| default\_tags | The default tags to apply to the resoures | map | `<map>` | no |
| engine | Aurora database engine type, currently aurora, aurora-mysql or aurora-postgresql | string | n/a | yes |
| engine\_version | Aurora database engine version. | string | n/a | yes |
| instance\_class | The instance class to use for the cluster | string | `"db.t2.small"` | no |
| instance\_parameter\_group\_family | The custom parameter group's family | string | `""` | no |
| instance\_parameter\_group\_name | The name of the parameter group to use | string | `""` | no |
| instance\_parameters | A list of DB parameter maps to apply to the custom parameter group | list | `<list>` | no |
| prefix\_name | The prefix for the name of the resources | string | `"my"` | no |
| replica\_count | The number of reader nodes to create | string | n/a | yes |
| subnets | The list of subnet IDs to use | list | n/a | yes |
| username | The master username of the database | string | `"root"` | no |
| vpc\_id | The ID of the VPC where to place the cluster | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| this\_rds\_cluster\_database\_name | Name for an automatically created database on cluster creation |
| this\_rds\_cluster\_endpoint | The cluster endpoint |
| this\_rds\_cluster\_master\_password | The master password |
| this\_rds\_cluster\_master\_username | The master username |
| this\_rds\_cluster\_port | The port |

