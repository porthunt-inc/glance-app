resource "editor" "editor" {
  workspace "config" {
    directory = "/app/config"
    target    = resource.container.glance
  }
}

resource "terminal" "terminal" {
  target            = resource.container.glance
  shell             = "/bin/bash"
  working_directory = "/app"
}
