
resource "aws_key_pair" "Mac-laptop" {
  key_name   = "Mac-laptop"
  public_key = file("~/.ssh/id_rsa.pub")
}


