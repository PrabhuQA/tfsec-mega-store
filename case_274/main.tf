

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad274" {
  name = "bad-274"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    publicly_accessible = true
  }
}

resource "aws_s3_bucket" "bad274" {
  bucket = "bad-bucket-274"
}

resource "aws_db_instance" "bad274" {
  identifier = "bad-db-274"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
