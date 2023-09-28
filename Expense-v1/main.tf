resource "aws_instance" "frontendt" {
  ami           = local.ami
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0967e4e86dde6d826"]
  tags = {
    Name = "frontendt"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id =  local.zone_id
  name    = "frontendt.${var.zone_id}"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.frontendt.private_ip ]
}

resource "null_resource" "frontend" {
  depends_on = [aws_route53_record.frontend]

  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/infra-ansible
git pull
sleep 60
ansible-playbook -i ${aws_instance.frontendt.private_ip}, -e ansible_user=centos -e ansible_password=DevOps321 expense.yml -e role_name=frontend
EOF
  }
}


resource "aws_instance" "backendt" {
  ami           = local.ami
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0967e4e86dde6d826"]
  tags = {
    Name = "backendt"
  }
}

resource "aws_route53_record" "backendt" {
  zone_id =  local.zone_id
  name    = "backendt.${var.zone_id}"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.backendt.private_ip ]
}

resource "null_resource" "backend" {
  depends_on = [aws_route53_record.backendt]
  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/infra-ansible
git pull
sleep 60
ansible-playbook -i ${aws_instance.backendt.private_ip}, -e ansible_user=centos -e ansible_password=DevOps321 main.yml -e role_name=backend
EOF
  }
}



resource "aws_instance" "mysqlt" {
  ami           = local.ami
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0967e4e86dde6d826"]
  tags = {
    Name = "mysqlt"
  }
}

resource "aws_route53_record" "mysqlt" {
  zone_id =  local.zone_id
  name    = "mysqlt.${var.zone_id}"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.mysqlt.private_ip ]
}

resource "null_resource" "mysql" {
  depends_on = [aws_route53_record.mysqlt]
  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/infra-ansible
git pull
sleep 60
ansible-playbook -i ${aws_instance.mysqlt.private_ip}, -e ansible_user=centos -e ansible_password=DevOps321 main.yml -e role_name=mysql
EOF
  }
}