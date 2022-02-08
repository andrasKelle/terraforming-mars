resource "aws_db_instance" "wordpress_rds" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t3.micro"
  name                      = "wordpress"
  username                  = "${var.rds_username}"
  password                  = "${var.rds_password}"
  parameter_group_name      = "default.mysql5.7"
  skip_final_snapshot       = true
  identifier                = "wordpress"
  vpc_security_group_ids    = ["${aws_security_group.http_mysql_ssh.id}"]
  
  tags = {
      Name = "${var.rds_name}"
  }
}