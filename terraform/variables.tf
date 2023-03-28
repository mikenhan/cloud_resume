variable "domain_name" {
  description = "Name of the domain"
  type        = string
}
variable "bucket_name" {
  description = "Name of the bucket."
  type        = string
}
variable "region" {
  default = "us-west-2"
  type    = string
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}