variable "command" {
  default = "echo 'Hello Hamed'"
}

resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "${var.command}"
  }
}
