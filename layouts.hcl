resource "layout" "single_panel" {
  column {}
}





resource "layout" "browser" {
  column {
    width = "73"
    tab "browser" {
      title  = "browser"
      target = resource.service.browser
    }
  }
  column {
    width = "27"
    instructions {
      title = "Instructions"
    }
  }
}
