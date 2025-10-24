resource "editor" "editor" {
  workspace "config" {
    directory = "/app/config"
    target    = resource.container.glance
  }
}


resource "service" "browser" {
  target = resource.container.glance
  scheme = "http"
  port   = 8080
  path   = ""
}




resource "terminal" "terminal" {
  target            = resource.container.glance
  shell             = ""
  working_directory = "/"
}
