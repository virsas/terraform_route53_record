provider "aws" {
  region = var.region
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = var.record.name
  type    = var.record.type
  ttl     = var.record.ttl

  records = var.record.value
}