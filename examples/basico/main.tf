# Ejemplo práctico de uso del módulo de redes AUY1105_etsmc
# ==============================================================================

provider "aws" {
  region = "us-east-1"
}

module "mi_red_corporativa" {
  source       = "../../" # Apunta a la raíz del módulo localmente en el ejemplo
  mi_ip_acceso = "192.168.1.50/32" # Ejemplo de IP restringida
  environment  = "AUY1105-etsmc-prod"
}

output "vpc_id_generada" {
  value = module.mi_red_corporativa.vpc_id
}