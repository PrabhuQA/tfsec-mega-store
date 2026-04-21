

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad238" {
  name = "bad-238"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    publicly_accessible = true
  }
}

resource "aws_s3_bucket" "bad238" {
  bucket = "bad-bucket-238"
}

resource "aws_db_instance" "bad238" {
  identifier = "bad-db-238"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
