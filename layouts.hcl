















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

resource "layout" "single_panel" {
  column {
    width = "100"
    tab "browser" {
      title  = "browser"
      target = resource.service.browser
    }
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
  }
}

resource "layout" "browser" {
  column {
    width = "50"
    tab "browser" {
      title  = "browser"
      target = resource.service.browser
    }
  }
  column {
    width = "50"
    instructions {
      title = "Instructions"
    }
  }
}
