variable "name" {
  type = string
  default = "develop"
}

variable "subnets" {
  type = list(object({
    zone = string
    cidr = string
  }))
}

variable "folder_id" {
  type = string
}

variable "security_group" {
  type = map(object({
    ingress = list(object({
      protocol       = string
      description    = string
      v4_cidr_blocks = list(string)
      port           = optional(number)
      from_port      = optional(number)
      to_port        = optional(number)
    }))
    egress = list(object({
      protocol       = string
      description    = string
      v4_cidr_blocks = list(string)
      port           = optional(number)
      from_port      = optional(number)
      to_port        = optional(number)
    }))
  }))

  default = {
    security1 = {
      ingress = [
        {
          protocol       = "TCP"
          description    = "разрешить входящий ssh"
          v4_cidr_blocks = ["0.0.0.0/0"]
          port           = 22
        },
        {
          protocol       = "TCP"
          description    = "разрешить входящий  http"
          v4_cidr_blocks = ["0.0.0.0/0"]
          port           = 80
        },
        {
          protocol       = "TCP"
          description    = "разрешить входящий https"
          v4_cidr_blocks = ["0.0.0.0/0"]
          port           = 443
        }
      ]
      egress = [
        {
          protocol       = "TCP"
          description    = "разрешить весь исходящий трафик"
          v4_cidr_blocks = ["0.0.0.0/0"]
          from_port      = 0
          to_port        = 65365
        }
      ]
    }
  }
}	

