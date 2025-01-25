variable "microservice_name" {
  description = "Microservice Name"
  type        = string
}

variable "desired_count" {
  description = "Number of desired tasks for the ECS service"
  type        = number
  default     = 1
}

variable "image_uri" {
  description = "Container image URI from ECR"
  type        = string
}

variable "container_port" {
  description = "Container ingress port"
  type        = number
  default     = 80
}

variable "cpu" {
  description = "Container CPU count"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Container memory count"
  type        = number
  default     = 512
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}