resource "lab" "main" {
  title       = "glance-lab"
  description = "Outline the lab's learning objectives, topics, and prerequisites."

  layout = resource.layout.single_panel
}
