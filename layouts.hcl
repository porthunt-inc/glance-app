







resource "layout" "single_panel" {
  column {
    width = "100"
    instructions {
      title = "Instructions"
    }
  }
}


resource "layout" "browser" {
  column {
    width = "24"
    tab "browser" {
      title  = "browser"
      target = resource.service.browser
    }
    instructions {
      title = "Instructions"
    }
  }
  column {
    width = "24"
    instructions {
      title = "Instructions"
    }
  }
}



resource "layout" "layout_1" {
  column {
    width = "45"
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
    instructions {
      title = "Instructions"
    }
  }
  column {
    width = "45"
    instructions {
      title = "Instructions"
    }
  }
}
