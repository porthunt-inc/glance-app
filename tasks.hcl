resource "task" "check-widgets" {
  description = "Let's add a widget to our glance.yaml file!"
  condition "check-widget" {
    description = "Add a widget to your yaml file"
    check {
      script          = "scripts/check-widgets/check-widget_check0"
      failure_message = "Yaml file is broken or doesn't contain ONE more widget"
    }
  }
}
