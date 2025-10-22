resource "layout" "single_panel" {
  column {}
}





resource "layout" "browser" {
  column {
    width = "27"
    tab "browser" {
      title  = "browser"
      target = resource.service.browser
    }
    instructions {
      title = "Instructions"
    }
  }
  column {
    width = "27"
    instructions {
      title = "Instructions"
    }
  }
}
