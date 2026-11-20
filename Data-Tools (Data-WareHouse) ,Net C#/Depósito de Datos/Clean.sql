-- Limpieza segura e idempotente de tablas Staging (BI_SA) y Data Warehouse (BI_DW)
SET XACT_ABORT ON;
BEGIN TRY
    BEGIN TRANSACTION;

    IF OBJECT_ID('BI_SA.dbo.Configuracion', 'U') IS NOT NULL
    BEGIN
        TRUNCATE TABLE BI_SA.dbo.Configuracion;
        DBCC CHECKIDENT ('BI_SA.dbo.Configuracion', RESEED, 0);
    END

    IF OBJECT_ID('BI_SA.dbo.TD_Articulo', 'U') IS NOT NULL TRUNCATE TABLE BI_SA.dbo.TD_Articulo;
    IF OBJECT_ID('BI_SA.dbo.TD_Cliente', 'U') IS NOT NULL TRUNCATE TABLE BI_SA.dbo.TD_Cliente;
    IF OBJECT_ID('BI_SA.dbo.TD_Factura_Detalle', 'U') IS NOT NULL TRUNCATE TABLE BI_SA.dbo.TD_Factura_Detalle;
    IF OBJECT_ID('BI_SA.dbo.TD_Factura_Encabezado', 'U') IS NOT NULL TRUNCATE TABLE BI_SA.dbo.TD_Factura_Encabezado;
    IF OBJECT_ID('BI_SA.dbo.TD_Sucursal', 'U') IS NOT NULL TRUNCATE TABLE BI_SA.dbo.TD_Sucursal;
    IF OBJECT_ID('BI_SA.dbo.TD_Tipo_Documento', 'U') IS NOT NULL TRUNCATE TABLE BI_SA.dbo.TD_Tipo_Documento;

    IF OBJECT_ID('BI_DW.dbo.TH_Ventas', 'U') IS NOT NULL
    BEGIN
        TRUNCATE TABLE BI_DW.dbo.TH_Ventas;
        DBCC CHECKIDENT ('BI_DW.dbo.TH_Ventas', RESEED, 0);
    END

    IF OBJECT_ID('BI_DW.dbo.TD_Tipo_Documento', 'U') IS NOT NULL DELETE FROM BI_DW.dbo.TD_Tipo_Documento;
    IF OBJECT_ID('BI_DW.dbo.TD_Articulo', 'U') IS NOT NULL DELETE FROM BI_DW.dbo.TD_Articulo;
    IF OBJECT_ID('BI_DW.dbo.TD_Cliente', 'U') IS NOT NULL DELETE FROM BI_DW.dbo.TD_Cliente;
    IF OBJECT_ID('BI_DW.dbo.TD_Sucursal', 'U') IS NOT NULL DELETE FROM BI_DW.dbo.TD_Sucursal;
    IF OBJECT_ID('BI_DW.dbo.TD_Tiempo', 'U') IS NOT NULL DELETE FROM BI_DW.dbo.TD_Tiempo;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    THROW;
END CATCH;
GO
