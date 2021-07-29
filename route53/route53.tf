resource "aws_route53_record" "blog" {
  zone_id = "Z024940942CV8LZ9REOV"
  name    = "blog.devasia.org"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}

