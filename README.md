# terraform_route53

Terraform module to create Route53 record

## Variables

``` terraform
# name: the name of the route 53 record
# type: the type of the record (A, CNAME, TXT, MX,)
# value: array of values where the domain should point to for given type
variable "route53_record_mx_example_org" { 
  default = { 
      name = "example.org"
      type = "MX"
      value = [ 
        "1 ASPMX.L.GOOGLE.COM",
        "5 ALT1.ASPMX.L.GOOGLE.COM",
        "5 ALT2.ASPMX.L.GOOGLE.COM",
        "10 ALT3.ASPMX.L.GOOGLE.COM",
        "10 ALT4.ASPMX.L.GOOGLE.COM"
      ]
  }
}
```

## Dependency

Route53 <https://github.com/virsas/terraform_route53>

## Terraform example

``` terraform
######################
# Route 53 records variables
######################
variable "route53_record_a_example_org" { 
  default = { 
      name  = "example.org"
      type  = "A"
      value = [ "192.168.0.1" ]
  }
}
######################
# Route 53 records
######################
module "route53_record_a_example_org" {
  source  = "git::https://github.com/virsas/terraform_route53_record.git?ref=v1.0.0"
  zone_id = module.example_org_route53.zone_id
  record  = var.route53_record_a_example_org
}
```
