resource "layout" "single_panel" {
  column {}
}


resource "layout" "editor-terminal-instructions" {
  column {
    width = "71"
    row {
      height = "50"
      tab "editor" {
        title  = "editor"
        target = resource.editor.editor
      }
    }
    row {
      height = "50"
      tab "terminal" {
        title  = "terminal"
        target = resource.terminal.terminal
      }
    }
  }
  column {
    width = "29"
    instructions {
      title = "Instructions"
    }
  }
}
