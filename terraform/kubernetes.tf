terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

variable "host" {
  type = string
}

variable "client_certificate" {
  type = string
}

variable "client_key" {
  type = string
}

variable "cluster_ca_certificate" {
  type = string
}

provider "kubernetes" {
  host = var.host

  client_certificate     = base64decode(var.client_certificate)
  client_key             = base64decode(var.client_key)
  cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
}

resource "kubernetes_deployment" "python-http-task-akourdi" {
  metadata {
    name = "scalable-python-http-task-akourdi-example"
    labels = {
      App = "Scalable-python-http-task-akourdi-Example"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        App = "Scalable-python-http-task-akourdi-Example"
      }
    }
    template {
      metadata {
        labels = {
          App = "Scalable-python-http-task-akourdi-Example"
        }
      }
      spec {
        container {
          image = " 85575/python-http-task-akourdi:latest"
          name  = "python-http-task-akourdi-demo"

          port {
            container_port = 80
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
