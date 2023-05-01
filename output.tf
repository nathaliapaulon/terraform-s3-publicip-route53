output "ip_address" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}

resource "aws_route53_record" "web" {
  zone_id = "Z07492233IU60QFI2TJAH"
  name    = "nathaliapaulon.xyz"
  type    = "A"
  ttl     = "300"

  records = [
    aws_instance.web.public_ip
  ]
}