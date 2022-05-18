terraform {
  required_version = ">= 0.13"

  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.14.0"
    }
  }
}
provider "docker" {
  host = "tcp://127.0.0.1:2375"
}

data "docker_registry_image" "nginx" {
  name = "kaginari/reverse-proxy-nginx:0.0.1"
}
resource "docker_image" "nginx" {
  name = data.docker_registry_image.nginx.name
  pull_triggers = [data.docker_registry_image.nginx.sha256_digest]
}
resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name = "nginx"

}
