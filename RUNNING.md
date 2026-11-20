

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

<!-- platform-tools:start -->
## Herramientas para otros componentes

### R

Prepara un intérprete R y las bibliotecas que importan los scripts. Ejecuta los análisis sobre copias de los datos; los resultados de compilación .NET de otros componentes no validan estos análisis.
<!-- platform-tools:end -->


<!-- improvements-20261119:start -->
## Mejoras y verificación — 2026-11-19 (Portabilidad de notebooks RMarkdown y limpieza SQL transaccional)

- **Cambios:** Eliminadas rutas absolutas `D:\Drive\Universidad\...` en 4 archivos `.Rmd` reemplazándolas por verificación relativa portable; corregido typo `cly` -> `cyl` y codificación UTF-8 en `demo.R` y `Clase 7/demo.R`; envuelto `Clean.sql` en `BEGIN TRANSACTION`/`TRY..CATCH` con guardas `OBJECT_ID(...) IS NOT NULL`.
- **Validación:** Auditoría automatizada de 12 scripts `.R`/`.Rmd` (0 rutas fijas `D:\Drive`, 0 typos `cly`) y validación estructural de `Clean.sql`.
<!-- improvements-20261119:end -->
