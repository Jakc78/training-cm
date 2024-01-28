resource "aws_instance" "vm" {
  ami           = "ami-0fef2f5dd8d0917e8"
  instance_type = "t2.micro"
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  associate_public_ip_address = true

  tags = {
    Name = "Formation_VM1"
  }
}