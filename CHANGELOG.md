# Changelog - Módulo de Redes (AUY1105_etsmc)

Todos los cambios notables en este proyecto serán documentados en este archivo. El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/) y este proyecto se adhiere a [Versionado Semántico](https://semver.org/lang/es/).

## [1.0.1] - 2026-07-13
### Added
- Incorporación de carpeta `examples/despliegue-estandar/` con un caso de uso práctico del módulo de red de forma aislada.
- Documentación detallada en `README.md` especificando parámetros de entrada (Inputs), salidas (Outputs) y dependencias del proveedor.
- Actualización del archivo .gitignore para excluir archivos temporales, planes de Terraform y artefactos locales

## [1.0.0] - 2026-07-13
### Added
- Inicialización del módulo de Redes (VPC) desacoplado de la infraestructura monolítica.
- Configuración de subredes públicas con asignación de IP dinámica autorizada mediante evasión estática Checkov (`CKV_AWS_130`).
- Implementación de controles de auditoría activa mediante CloudWatch VPC Flow Logs.