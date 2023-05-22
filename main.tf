provider "google" {
  credentials = file("<path_to_service_account_key_json>")
  project     = "<your_project_id>"
  region      = "<your_project_region>"
}

variable "topic_count" {
  default = 10000
}

resource "google_pubsub_topic" "topic" {
  count        = var.topic_count
  name         = "topic-${count.index}"
}
