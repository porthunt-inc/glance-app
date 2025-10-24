




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



resource "layout" "single_panel" {
  column {
    width = "100"
    instructions {
      title = "Instructions"
    }
  }
}

resource "layout" "layout_1" {
  column {
    width = "50"
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
    instructions {
      title = "Instructions"
    }
  }
  column {
    width = "50"
    instructions {
      title = "Instructions"
    }
  }
}
