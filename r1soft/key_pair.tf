resource "aws_key_pair" "bastion_host3" {
  key_name   = "bastion-host-key3"
  public_key = file("~/.ssh/id_rsa.pub")
}