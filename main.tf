terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "christiankm01" "kilo" {
  name = "kilo:1"
}

# Create a container
resource "docker_container" "foo" {
  image = christiankm01.kilo.1
  name  = "foo"
}
