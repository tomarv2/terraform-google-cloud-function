module "cloudfunction" {
  source = "../../"

  gcp_project = "demo-1000"
  environment_vars = {
    "HELLO" = "WORLD"
  }
  output_file_path             = "/tmp/test.zip"
  source_file                  = "main.py"
  gcp_region                   = "us-west3"
  function_archive_bucket_name = module.storage_bucket.storage_bucket_name
  ingress_settings             = "ALLOW_ALL"
  entry_point                  = "function_handler"
  #-------------------------------------------------------------------
  # NOTE:
  # trigger_event_type & trigger_event_resource is only required
  # when trigger_type is bucket and topic
  trigger_type           = "http"
  trigger_event_type     = "google.storage.object.finalize"
  trigger_event_resource = "demo-bucket"
  sls_project_env        = "dev"
  invokers               = ["allUsers"]
  service_account_email  = "demo@demo-1000.iam.gserviceaccount.com"
  #-------------------------------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}

module "storage_bucket" {
  source = "git::git@github.com:tomarv2/terraform-google-storage-bucket.git?ref=0.0.1"

  teamid      = var.teamid
  prjid       = var.prjid
  gcp_project = "demo-1000"
  gcp_region  = "us-west3"
}