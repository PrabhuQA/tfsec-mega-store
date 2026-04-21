

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad219" {
  name = "bad-219"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    acl = "public-read"
  }
}

resource "aws_s3_bucket" "bad219" {
  bucket = "bad-bucket-219"
}

resource "aws_db_instance" "bad219" {
  identifier = "bad-db-219"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
