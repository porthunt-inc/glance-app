resource "quiz" "general" {
  questions = [resource.text_answer_question.text, resource.numeric_answer_question.number, resource.single_choice_question.widgets]
}

resource "single_choice_question" "single" {
  question    = "Which of these statements about Glance widgets is TRUE?"
  answer      = "Widgets can be arranged in columns within a page."
  distractors = ["Widgets can only display RSS feeds. ", "Each page can only have one widget.", "Widgets automatically run Python scripts."]
  hints       = []
}

resource "multiple_choice_question" "multi" {
  question    = "Select all the properties that are configurable for any widget in Glance:"
  answer      = ["title", "type", "css-class"]
  distractors = ["size", "theme-color"]
  hints       = ["Some of these are only for some specific widgets or configurations."]
}

resource "numeric_answer_question" "number" {
  question = "Up to how many columns can you have on a single page in Glance by default?"
  answer   = 3
  hints    = []
}

resource "text_answer_question" "text" {
  question = "What YAML key defines the dashboard pages in Glance?"
  answer   = "pages"
  hints    = []
}

resource "single_choice_question" "widgets" {
  question    = "What can you add to your columns to make them more useful and customized?"
  answer      = "widgets"
  distractors = ["ads", "text", "images"]
  hints       = ["You can add everything in your page, but you need to use..."]
}
