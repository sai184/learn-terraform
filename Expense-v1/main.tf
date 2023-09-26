resource "aws_instance" "frontendt" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0967e4e86dde6d826"]
  tags = {
    Name = "frontendt"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id =  "Z00468253CUIDTZTPB0D"
  name    = "frontendt.rdevopsb72online.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.frontendt.private_ip ]
}


resource "aws_instance" "backendt" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0967e4e86dde6d826"]
  tags = {
    Name = "backendt"
  }
}

resource "aws_route53_record" "backendt" {
  zone_id =  "Z00468253CUIDTZTPB0D"
  name    = "backendt.rdevopsb72online.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.backendt.private_ip ]
}



resource "aws_instance" "mysqlt" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0967e4e86dde6d826"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysqlt" {
  zone_id =  "Z00468253CUIDTZTPB0D"
  name    = "mysqlt.rdevopsb72online.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.mysqlt.private_ip ]
}
