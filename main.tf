terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"

    }
  }
}

provider "docker" {}

resource "christiankm01" "kilo" {
  name         = "christiankm01/kilo:1"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
