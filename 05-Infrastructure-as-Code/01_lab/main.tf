terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "ngnxdemosimage" {
  name = "nginxdemos/hello"
}

resource "docker_container" "ngnxdemoscontainer" {
  name  = "ngnxdemoscontainer"
  image = resource.docker_image.ngnxdemosimage.name

  ports {
    internal = 80
    external = 8000
  }
}