output "function_http_url" {
  description = "function http trigger url"
  value       = join(" ", module.cloudfunction.*.function_http_url)
}

output "function_name" {
  description = "function name"
  value       = join(" ", module.cloudfunction.*.function_name)
}

output "function_service_account_email" {
  description = "Service account email"
  value       = join(" ", module.cloudfunction.*.function_service_account_email)
}

output "function_runtime" {
  description = "function runtime"
  value       = join(" ", module.cloudfunction.*.function_runtime)
}

output "function_region" {
  description = "function region"
  value       = join(" ", module.cloudfunction.*.function_region)
}

output "function_memory" {
  description = "function memory"
  value       = join(" ", module.cloudfunction.*.function_memory)
}

output "function_project" {
  description = "function project"
  value       = join(" ", module.cloudfunction.*.function_project)
}

output "function_id" {
  description = "function id"
  value       = join(" ", module.cloudfunction.*.function_id)
}

output "function_source_archive_bucket" {
  description = "function source archive bucket"
  value       = join(" ", module.cloudfunction.*.function_source_archive_bucket)
}

output "function_source_archive_object" {
  description = "function source archive object"
  value       = join(" ", module.cloudfunction.*.function_source_archive_object)
}

output "function_vpc_egress_settings" {
  description = "function vpc egress settings"
  value       = join(" ", module.cloudfunction.*.function_vpc_egress_settings)
}

output "bucket_name" {
  description = "function bucket name"
  value       = join(" ", module.storage_bucket.*.storage_bucket_name)
}
