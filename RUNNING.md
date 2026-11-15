

<!-- local-development:start -->
# Desarrollo local

Puedes abrir este repositorio en VS Code, Antigravity o Sublime Text. El compilador y los servicios necesarios dependen del componente indicado abajo.

## Bases de datos

Revisa los scripts de esquema y crea una base de datos de prueba separada. SSMS 20 y pgAdmin 4 son clientes; SQL Server y PostgreSQL son motores distintos. Los scripts SQL Server no se ejecutan directamente en PostgreSQL. Las restauraciones deben hacerse sobre una base de prueba nueva. PostgreSQL 17 y 18 requieren comprobarse por separado.

## Componentes y validación

Inventario y compilaciones locales del 2026-11-15. Una compilación correcta no acredita todavía interacción, compatibilidad de base de datos, instalador ni despliegue.

| Componente | Tipo / destino | Validación |
| --- | --- | --- |
| [Data-Tools (Data-WareHouse) ,Net C#/Depósito de Datos/IntegrationBI/IntegrationBI.sln](<Data-Tools (Data-WareHouse) ,Net C#/Depósito de Datos/IntegrationBI/IntegrationBI.sln>) | solution | Sin ejecutar |
| [Data-Tools (Data-WareHouse) ,Net C#/Depósito de Datos/MultidimensionalBI/MultidimensionalBI.sln](<Data-Tools (Data-WareHouse) ,Net C#/Depósito de Datos/MultidimensionalBI/MultidimensionalBI.sln>) | solution | Sin ejecutar |

## Archivos ignorados

`.gitignore` excluye credenciales locales, estado del editor y salidas de las herramientas detectadas. No deja de versionar archivos que ya estaban en Git. Los manifiestos, archivos de bloqueo, recursos fuente y scripts de esquema forman parte del código.
<!-- local-development:end -->
