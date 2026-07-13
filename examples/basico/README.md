# Ejemplo de implementación básica

Este directorio contiene un caso de uso práctico para invocar el módulo de redes `AUY1105-etsmc` de forma independiente.

El ejemplo despliega una VPC con subredes públicas y privadas, conectividad mediante Internet Gateway y NAT Gateway, además de un Security Group y Flow Logs para auditoría. La configuración utiliza una IP de acceso de ejemplo para restringir el acceso SSH.

## Archivos considerados

- `main.tf`: configura el proveedor AWS, invoca el módulo mediante una ruta local relativa y expone un output de ejemplo.
- `outputs.tf`: opcionalmente puede utilizarse para separar las salidas del ejemplo si se desea una estructura más ordenada. 

## Requisitos previos

Antes de ejecutar este ejemplo, debes contar con lo siguiente:

- Terraform instalado.
- Credenciales válidas de AWS configuradas en tu entorno.
- Permisos suficientes para crear recursos de red en AWS.
- Un valor válido para `mi_ip_acceso` en formato CIDR, por ejemplo `X.X.X.X/32`.

## Instrucciones de ejecución

Para validar la configuración localmente, navega a este directorio en tu terminal y ejecuta:

1. Inicializar el entorno:
   ```bash
   terraform init
   ```

2. Validar la sintaxis:
   ```bash
   terraform validate
   ```

3. Generar un plan de ejecución:
   ```bash
   terraform plan
   ```

## Nota

La IP `192.168.1.50/32` es solo referencial. Debe reemplazarse por la IP pública real autorizada para el acceso SSH.