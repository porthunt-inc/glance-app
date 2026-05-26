







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


resource "layout" "layout_1" {
  column {
    width = "73"
    row {
      height = "73"
      tab "editor" {
        title  = "editor"
        target = resource.editor.editor
      }
    }
    row {
      height = "27"
      tab "terminal" {
        title  = "terminal"
        target = resource.terminal.terminal
      }
    }
  }
  column {
    width = "27"
    instructions {
      title = "Instructions"
    }
  }
}
