terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo 'Hello, World!'"
  }

  triggers = {
    always_run = timestamp()
  }
}
