

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad203" {
  name = "bad-203"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    Action = "*"
  }
}

resource "aws_s3_bucket" "bad203" {
  bucket = "bad-bucket-203"
}

resource "aws_db_instance" "bad203" {
  identifier = "bad-db-203"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
