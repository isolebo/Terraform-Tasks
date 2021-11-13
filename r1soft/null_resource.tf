resource "null_resource" "myscript" {
    triggers = {
        always_run = timestamp()
    }
    provisioner "remote-exec" {
    inline = [
      "echo r1soft installation",
    ]
  }
    connection {
        type     = "ssh"
        user     = "centos"
        private_key = file("~/.ssh/id_rsa")
        host     = aws_instance.web.public_ip
    }
}