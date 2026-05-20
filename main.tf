resource "google_storage_bucket" "state_file_management_bucket" {
    name = "${var.project_id}-tf-state-file-dbg"
    location =  var.bucket_location
    uniform_bucket_level_access = true
    force_destroy = false
    storage_class = "STANDARD"
    versioning {
      enabled = true
    }
    labels = {
      "purpose" = "central-state-file-management"
      "owner" = "dinesh"
    }
  
}