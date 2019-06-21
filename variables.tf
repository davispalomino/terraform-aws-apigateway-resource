variable "rest_api" {
  type = string
  description = "id API Gateway Rest-API"
}

variable "path_part" {
  description = "Lista de path"
  type = list
  default = []
}

variable "parent_id" {
  type = string
}
