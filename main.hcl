resource "lab" "main" {
  title       = "Getting Started with Glance: Building a Self-Hosted Dashboard for Your Feeds - New name"
  description = "In this lab, you’ll learn how to install, configure, and customize Glance — a lightweight, self-hosted dashboard that brings together multiple feeds like RSS, Reddit, YouTube, market data, server stats, and more into one clean interface. You’ll start by deploying Glance using either Docker or the standalone binary, then move on to building your own personalized dashboard. Along the way, you’ll define pages, add and configure widgets, and apply custom themes or CSS to make it truly yours.\n\nBy the end of the lab, you’ll have your own fully functional Glance dashboard — tailored to your interests and setup — and you’ll know how to add new widgets, create custom ones, and organize your layout exactly how you like it.\n\nAdding more lines to description."

  layout = resource.layout.browser
  settings {
    timelimit {
      duration   = "30m"
      show_timer = true
    }
  }
  content {
    chapter "using-glance" {
      title = "Using Glance"
      page "introduction" {
        title     = "Introduction"
        reference = resource.page.introduction
        layout    = resource.layout.single_panel
      }
      page "navigating-the-dashboard" {
        title     = "Navigating the Dashboard"
        layout    = resource.layout.browser
        reference = resource.page.navigating-the-dashboard
      }
    }
    chapter "understanding-widgets" {
      title = "Understanding Widgets"
      page "common-widget-types" {
        title     = "Common Widget Types"
        reference = resource.page.common-widget-types
      }
      page "adding-a-widget" {
        title     = "Adding a Widget"
        reference = resource.page.adding-a-widget
        layout    = resource.layout.layout_1
      }
      page "widget-properties" {
        title     = "Widget Properties"
        reference = resource.page.widget-properties
      }
    }
    chapter "pages--columns" {
      title = "Pages & Columns"
      page "working-with-columns" {
        title     = "Working with Columns"
        reference = resource.page.working-with-columns
      }
      page "test-your-skills" {
        title     = "Test your skills!"
        reference = resource.page.test-your-skills
      }
    }
  }
}
