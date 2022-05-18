terraform {
  required_version = ">= 0.13"

  required_providers {
    docker-utils = {
      source = "Kaginari/docker-utils"
      version = "9.9.9"
    }

  }
}

variable "docker_container_name" {
  default = "proxy"
}


provider "docker-utils" {
  host = "tcp://127.0.0.1:2376"
}
resource "docker-utils_exec" "create_ssl" {
  container_name = "proxy"
  attach_stderr = false
  attach_stdin = false
  attach_stdout = false
  detach  = true
  tty  = true
  commands = ["/bin/bash","-c","mkdir example && touch example/$DOMAIN.txt"]
  environment = ["DOMAIN=sonarqube.kaginari.com"]
  destroy_commands = ["/bin/bash","-c","rm -rf example"]
}
