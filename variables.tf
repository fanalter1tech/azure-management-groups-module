variable "tags" {
  type = map(string)
  default = {
    "environment" = "dev"
  }
}

variable "display_name" {
  type    = list(string)
  default = ["parent-group", "child-group"]
}

variable "env_name" {
  type    = string
  default = "dev"
}
