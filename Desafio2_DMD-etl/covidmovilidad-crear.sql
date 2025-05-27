-- Crear la base de datos solo si no existe
IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'covidmovilidad'
)
BEGIN
    CREATE DATABASE covidmovilidad;
END
GO

-- Usar la base de datos
USE covidmovilidad;
GO

-- Crear la tabla solo si no existe
IF NOT EXISTS (
    SELECT * 
    FROM sys.objects 
    WHERE object_id = OBJECT_ID(N'dbo.hechos') 
      AND type = N'U'
)
BEGIN
    CREATE TABLE [dbo].[hechos] (
        [tipo_movilidad] NVARCHAR(255),
        [porcentaje_cambio] SMALLINT,
        [country_region_code] NVARCHAR(2),
        [country_region] NVARCHAR(11),
        [department] NVARCHAR(50),
        [iso_code] NVARCHAR(50),
        [place_id] NVARCHAR(27),
        [mobility_date] DATETIME
    );
END
GO
