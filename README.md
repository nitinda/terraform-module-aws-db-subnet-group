# _Terraform Module: terraform-module-aws-db-subnet-group_
_Terraform module for AWS Database Subnet Group_


## _General_

_This module can be used to deploy a_ _**Database Subnet Group** on **AWS** Cloud Provider......_


---

## _Prerequisites_

_This module needs **Terraform 0.12.20** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- _**Database Subnet Group**_


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_


```tf
module "db_subnet_group" {
  source = "git::https://github.com/nitinda/terraform-module-aws-db-subnet-group.git?ref=master"

  providers = {
    aws = aws.services
  }

  # Tags
  tags = {
    Project      = "POC"
    Owner        = "Platform Team"
    Environment  = "prod"
    BusinessUnit = "Platform Team"
    ManagedBy    = "Terraform"
    Application  = "RDS Cluster Parameter Group"
  }

  # RDS Subnet Group
  name_prefix = "db-subnet-group-"
  description = "DB subnet group for DB"
  subnet_ids  = var.subnet_ids
}
```


---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|
| **_name\_prefix_** | _Creates a unique name_ | _string_ | **_Required_** |
| **_description_** | _The description of the DB subnet group_ | _string_ | **_Required_** |
| **_subnet\_ids_** | _A list of VPC subnet IDs_ | _list(string)_ | **_Required_** |
| **_tags_** | _Resource tags_ | _map(string)_ | **_Required_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_


* **_id_**
* **_arn_**


### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**