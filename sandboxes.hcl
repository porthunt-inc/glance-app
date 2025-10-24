resource "container" "glance" {
  image {
    name = "glanceapp/glance"
  }
  port {
    local = "8080"
    host  = "8080"
  }
  resources {
    memory = 256
  }
  health_check {
    timeout = "30s"
  }
  run_as {
    user  = "root"
    group = "root"
  }
}

resource "container" "ubuntu" {
  image {
    name = "ubuntu:22.04"
  }
  resources {
    memory = 256
  }
  health_check {
    timeout = "30s"
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
