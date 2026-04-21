

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad270" {
  name = "bad-270"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "bad270" {
  bucket = "bad-bucket-270"
}

resource "aws_db_instance" "bad270" {
  identifier = "bad-db-270"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
