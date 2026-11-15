variable "name" {
  type = string
  default = "develop"
}

variable "zone" {
  type = string
  default = "ru-central1-d"
}

variable "cidr" {
  type = list(string)
  default = ["10.100.0.0/24"]
}

