variable "app_name" {
  type        = string
  description = "Application Name"
  default     = "de-capstone-project"
}

variable "container_cpu" {
  description = "Container cpu"
  default     = "2000m"
}

variable "container_memory" {
  description = "Container memory"
  default     = "2G"
}

variable "project_id" {
  type        = string
  description = "The name of the project"
  default     = "dtc-de-zoomcamp-410523"
}

variable "region" {
  type        = string
  description = "The default compute region"
  default     = "us-west2"
}

variable "zone" {
  type        = string
  description = "The default compute zone"
  default     = "us-west2-a"
}

variable "repository" {
  type        = string
  description = "The name of the Artifact Registry repository to be created"
  default     = "mage-data-prep"
}

variable "database_user" {
  type        = string
  description = "The username of the Postgres database."
  default     = "mageuser"
}

variable "database_password" {
  type        = string
  description = "The password of the Postgres database."
  sensitive   = true
}

variable "docker_image" {
  type        = string
  description = "The Docker image url in the Artifact Registry repository to be deployed to Cloud Run"
  default     = "us-east1-docker.pkg.dev/dtc-de-zoomcamp-410523/mage-docker/mageai"
}

variable "domain" {
  description = "Domain name to run the load balancer on. Used if `ssl` is `true`."
  type        = string
  default     = ""
}

variable "ssl" {
  description = "Run load balancer on HTTPS and proviFsion managed certificate with provided `domain`."
  type        = bool
  default     = false
}

variable "path_to_keyfile" {
  description = "Path to the keyfile containing GCP credentials."
  type        = string
  default     = "/secrets/gcp/service_account_credentials"
}
