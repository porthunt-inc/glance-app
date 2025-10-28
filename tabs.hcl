resource "editor" "editor" {
  workspace "config" {
    directory = "/app/config"
    target    = resource.container.glance
  }
}








resource "terminal" "terminal" {
  target            = resource.container.glance
  shell             = "/bin/sh"
  working_directory = "/app/config"
}

resource "service" "browser" {
  target = resource.container.glance
  scheme = "http"
  port   = 8080
  path   = "/"
}

resource "external_website" "something" {
  url                = "https://google.com"
  open_in_new_window = false
}
