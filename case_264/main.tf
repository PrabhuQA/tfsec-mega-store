

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad264" {
  name = "bad-264"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    encrypted = false
  }
}

resource "aws_s3_bucket" "bad264" {
  bucket = "bad-bucket-264"
}

resource "aws_db_instance" "bad264" {
  identifier = "bad-db-264"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
