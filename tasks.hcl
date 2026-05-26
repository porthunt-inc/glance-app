resource "task" "check-widgets" {
  description = "Let's add a widget to our glance.yaml file!"
  condition "check-widget" {
    description = "Add a widget to your yaml file"
    check {
      script = "scripts/check-widgets/check-widget_check1"
    }
  }
  config {
    parallel_exec {
      condition = false
      check     = false
      solve     = false
      setup     = false
      cleanup   = false
    }
  }
}
