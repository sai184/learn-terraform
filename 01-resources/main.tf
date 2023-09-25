resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  tags = {
   Name = "HelloWorld"
}
}

resource "aws_route53_record" "www" {
  zone_id =  "Z00468253CUIDTZTPB0D"
  name    = "test.rdevopsb72online.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.web.private_ip ]
}
