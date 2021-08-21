terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}
resource "docker_container" "hello_world_app" {
  image = "hello_world_app:latest"
  name  = "hello_world_app"
  restart = "always"
  volumes {
    container_path  = "/myapp"
    # replace the host_path with full path for your project directory starting from root directory /
    host_path = "/home/chuck/hello_world_app" 
    read_only = false
  }
  ports {
    internal = 3000
    external = 3000
  }
}
