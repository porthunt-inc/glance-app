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

resource "container" "glance" {
  image {
    name = "porthunt/glance-app"
  }
  port {
    local = 0
    host  = 0
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
