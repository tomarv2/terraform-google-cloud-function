variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "region" {
  description = "Location where this resources should be created"
  type        = string
  default     = "us-central1"
}

variable "project" {
  description = "GCP project to deploy resources"
  type        = string
}
