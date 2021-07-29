resource "aws_route53_record" "wordpress" {
  zone_id = "Z024940942CV8LZ9REOV"
  name    = "wordpress.devasia.org"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}