terraform {
  required_version = ">= 0.13"

  required_providers {
    docker-utils = {
      source = "Kaginari/docker-utils"
    }
  }
}
variable "docker_tcp_host" {}
variable "docker_container_name" {}

provider "docker-utils" {
    host = var.docker_tcp_host
}
resource "docker-utils_exec" "exec" {

  container_name = var.docker_container_name    #(Required) the container alias or id

  # Exec Options

  attach_stderr = true    # optional default false
  attach_stdin = true     # optional default false
  attach_stdout = true    # optional default false
  detach  = true          # optional default false
  tty  = true             # optional default false
  privileged  = false     # optional default false
  user  = "root"          # optional default root
  working_dir = "/home"   # optional default root folder

  # Exec commands
  commands = ["/bin/bash","-c","ls"]                    # (Required) commands will be applied on apply
                                                 # (Optional) environment will be applied on destroy
}
