

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad235" {
  name = "bad-235"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    Action = "*"
  }
}

resource "aws_s3_bucket" "bad235" {
  bucket = "bad-bucket-235"
}

resource "aws_db_instance" "bad235" {
  identifier = "bad-db-235"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
