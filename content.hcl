
resource "page" "introduction" {
  title = "Introduction"
  file  = "instructions/how-to-deploy-glance-using-docker-compose/introduction.md"
}


resource "page" "navigating-the-dashboard" {
  title = "Navigating the Dashboard"
  file  = "instructions/how-to-deploy-glance-using-docker-compose/navigating-the-dashboard.md"
}




resource "page" "common-widget-types" {
  title = "Common Widget Types"
  file  = "instructions/using-glance/common-widget-types.md"
}

resource "page" "widget-properties" {
  title = "Widget Properties"
  file  = "instructions/understanding-widgets/widget-properties.md"
}

resource "page" "adding-a-widget" {
  title = "Adding a Widget"
  file  = "instructions/adding-widgets/adding-a-widget.md"
}


resource "page" "test-your-skills" {
  title = "Test your skills!"
  file  = "instructions/using-glance/test-your-skills.md"
  activities = {
    "general" = resource.quiz.general
  }
}

resource "page" "adding-a-page" {
  title = "Adding a Page"
  file  = "instructions/pages--columns/adding-a-page.md"
}

resource "page" "working-with-columns" {
  title = "Working with Columns"
  file  = "instructions/pages--columns/working-with-columns.md"
}
