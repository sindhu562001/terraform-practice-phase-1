provider "google" {
  project = "red-delight-463218-c6"
  region  = "us-central1"
}

module "state_storage_bucket" {
  source          = "../modules/storage"
  bucket_name     = "state_storage_bucket"
  bucket_location = "us-central1"
  force_destroy   = true
}