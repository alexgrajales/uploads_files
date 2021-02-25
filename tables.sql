CREATE TABLE sandbox.data_covid (
    "fecha reporte web" varchar(100),
    "ID de caso" varchar(100),
    "Fecha de notificación" varchar(100),
    "Código DIVIPOLA departamento" varchar(100),
    "Nombre departamento" varchar(100),
    "Código DIVIPOLA municipio" varchar(100),
    "Nombre municipio" varchar(100),
    "Edad" varchar(100),
    "Unidad de medida de edad" varchar(100) ,
    "Sexo" varchar(100),
    "Tipo de contagio" varchar(100),
    "Ubicación del caso" varchar(100),
    "Estado" varchar(100),
    "Código ISO del país" varchar(100),
    "Nombre del país" varchar(100),
    "Recuperado" varchar(100),
    "Fecha de inicio de síntomas" varchar(100),
    "Fecha de muerte" varchar(100),
    "Fecha de diagnóstico" varchar(100),
    "Fecha de recuperación" varchar(100),
    "Tipo de recuperación" varchar(100),
    "Pertenencia étnica" varchar(100),
    "Nombre del grupo étnico" varchar(100)
);

CREATE TABLE sandbox.data_ciudades (
    "Código Departamento" varchar(100),
    "Nombre Departamento" varchar(100),
    "Código Municipio" varchar(100),
    "Nombre Municipio" varchar(100)
);


CREATE TABLE sandbox.data_covid_uci_bogota(
    "Fecha" varchar(1000),
    "Camas UCI ocupadas Covid-19" varchar(1000),
    "Total camas UCI COVID 19 reportadas por IPS" varchar(1000),
    "Ocupación UCI COVID 19" varchar(1000)
);

-----------------metabase ----------------
--covid colombia por estado--
select estado_actual, count(*) from "datawarehouse"."covid_colombia" group by estado_actual;
--covid colombia por estado tipo de recuperacion--
select tipo_recuperacion, count(*) from "datawarehouse"."covid_colombia" group by tipo_recuperacion
--covid casos por departamento--
select departamento, count(*) cantidad_casos from "datawarehouse"."covid_colombia"
group by departamento order by cantidad_casos
--covid casos por municipio--
select municipio, count(*) cantidad_casos from "datawarehouse"."covid_colombia"
group by municipio order by cantidad_casos
--covid muerte y fecha--
select fecha_muerte, count(*) from "datawarehouse"."covid_colombia" where fecha_muerte != '' group by fecha_muerte order by fecha_muerte desc

