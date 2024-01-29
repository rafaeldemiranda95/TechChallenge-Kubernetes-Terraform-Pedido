variable "DB_HOST" {
  description = "Database Host"
  type        = string
  default     = ""
}

variable "DB_USERNAME" {
  description = "Database Username"
  type        = string
  default     = ""
}

variable "DB_PASSWORD" {
  description = "Database Password"
  type        = string
  default     = ""
}

variable "DB_NAME" {
  description = "Database Name"
  type        = string
  default     = ""
}

variable "JWT_SECRET" {
  description = "JWT Secret Key"
  type        = string
  default     = ""
}

variable "google_application_credentials" {
  description = "Google Cloud credentials JSON"
  type        = string
  default     = ""
}
