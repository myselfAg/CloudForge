resource "aws_instance" "web_server" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.cloudforge.key_name
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}

resource "aws_key_pair" "cloudforge" {
  key_name   = "cloudforge-key"
  public_key = file("../../keys/cloudforge-key.pub")
}