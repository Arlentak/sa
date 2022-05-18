terraform {
  required_version = ">= 0.13"

  required_providers {
    docker-utils = {
      source = "Kaginari/docker-utils"
      version = "0.0.5"
    }

  }
}



provider "docker-utils" {
  host = "tcp://127.0.0.1:2376"
}
resource "docker-utils_exec" "create_ssl" {
  container_name = "proxy"
#  attach_stderr = false
#  attach_stdin = false
#  attach_stdout = false
#  detach  = true
#  tty  = true
  commands = ["/bin/bash","-c","ls -a"]

}
