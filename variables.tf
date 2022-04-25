variable "region" { default = "eu-west-1" }
variable "zone_id" { default = 0 }
variable "record" { default = { name = "example.org", type = "A", ttl = "30", value = [ "1.1.1.1" ] } }