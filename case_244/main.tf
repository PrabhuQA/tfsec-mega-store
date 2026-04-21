

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


resource "aws_security_group" "bad244" {
  name = "bad-244"
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    publicly_accessible = true
  }
}

resource "aws_s3_bucket" "bad244" {
  bucket = "bad-bucket-244"
}

resource "aws_db_instance" "bad244" {
  identifier = "bad-db-244"
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "weakpassword"
  publicly_accessible = true
}
