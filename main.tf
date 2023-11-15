resource "null_resource" "hello_world" {
  triggers = {
    message = var.message
  }

  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}
