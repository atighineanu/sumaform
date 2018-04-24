variable "base_configuration" {
  description = "use ${module.base.configuration}, see the main.tf example file"
  type = "map"
}

variable "grafana" {
  description = "whether to deploy a Grafana host monitoring the server"
  default = true
}

variable "suse_manager_name" {
  description = "hostname, without the domain part"
  type = "string"
  default = "server"
}

variable "evil_minions_name" {
  description = "hostname for the evil-minions instance, without the domain part"
  type = "string"
  default = "evil-minions"
}

variable "locust_name" {
  description = "hostname for the locust instance, without the domain part"
  type = "string"
  default = "locust"
}

variable "grafana_name" {
  description = "hostname for the grafana instance, without the domain part"
  type = "string"
  default = "grafana"
}

// Provider-specific variables

variable "server_floating_ips" {
  description = "List of floating IP IDs to associate to the server"
  default = []
}

variable "evil_minions_floating_ips" {
  description = "List of floating IP IDs to associate to the evil-minions instance"
  default = []
}

variable "locust_floating_ips" {
  description = "List of floating IP IDs to associate to the Locust instance"
  default = []
}

variable "grafana_floating_ips" {
  description = "List of floating IP IDs to associate to the Grafana instance"
  default = []
}