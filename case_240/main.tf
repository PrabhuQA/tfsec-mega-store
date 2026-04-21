

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad240" {
  name = "bad-240"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    acl = "public-read"
  }
}

resource "aws_s3_bucket" "bad240" {
  bucket = "bad-bucket-240"
}

resource "aws_db_instance" "bad240" {
  identifier = "bad-db-240"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
