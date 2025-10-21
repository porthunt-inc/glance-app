resource "lab" "main" {
  title       = "Getting Started with Glance: Building a Self-Hosted Dashboard for Your Feeds"
  description = "In this lab, you’ll learn how to install, configure, and customize Glance — a lightweight, self-hosted dashboard that brings together multiple feeds like RSS, Reddit, YouTube, market data, server stats, and more into one clean interface. You’ll start by deploying Glance using either Docker or the standalone binary, then move on to building your own personalized dashboard. Along the way, you’ll define pages, add and configure widgets, and apply custom themes or CSS to make it truly yours.\n\nBy the end of the lab, you’ll have your own fully functional Glance dashboard — tailored to your interests and setup — and you’ll know how to add new widgets, create custom ones, and organize your layout exactly how you like it."

  layout = resource.layout.single_panel
  settings {
    timelimit {
      duration   = "30m"
      show_timer = true
    }
  }
}
