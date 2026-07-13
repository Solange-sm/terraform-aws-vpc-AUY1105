# terraform-aws-vpc-AUY1105
EFT

# Módulo Terraform: AWS VPC

**Alumna:** Solange Milla

## Descripción
Este módulo de Terraform provisiona una topología de red aislada y segura en AWS siguiendo los estándares de la asignatura Infraestructura como Código II (AUY1105). Está diseñado de forma modular y desacoplada para ser consumido remotamente por un Orquestador central, aislando por completo la capa de redes.

## Características de Seguridad
El módulo incluye configuraciones avanzadas para mitigar riesgos e implementar auditorías activas que satisfacen las reglas estáticas de Checkov:
- Activación de registros de tráfico mediante **VPC Flow Logs** integrados con CloudWatch.
- Evasión estática documentada (`CKV_AWS_130`) para permitir el direccionamiento público del Servidor Web en AWS Academy.
- Restricción estricta del Security Group predeterminado de la VPC para evitar fugas de tráfico (`CKV2_AWS_12`).
- Grupo de Seguridad específico para cómputo con acceso SSH restringido dinámicamente.

## Ejemplo de Uso

```hcl
module "redes" {
  source = "git::[https://github.com/Solange-sm/terraform-aws-vpc-AUY1105.git?ref=v1.0.1](https://github.com/Solange-sm/terraform-aws-vpc-AUY1105.git?ref=v1.0.1)"
  
  # Dirección IP pública autorizada para el acceso SSH restringido
  mi_ip_acceso = "201.241.45.12/32" 
  
  # Variables opcionales (con valores por defecto en el módulo)
  environment  = "AUY1105-etsmc"
  vpc_cidr     = "10.1.0.0/16"
}