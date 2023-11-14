CREATE VIEW VistaEmpleado AS
SELECT 
    E.ID_Empleado,
    E.NombresEmpleado,
    E.ApellidosEmpleado,
    E.FechaNac,
    E.Telefono,
    E.Correo,
    E.DUI,
    E.ISSS,
    D.Linea1,
    D.linea2,
    Di.NombreDistrito,
    M.NombreMunicipio,
    Dep.NombreDepartamento,
    T.NombreTipoEmpleado 
FROM Empleados E
INNER JOIN Direcciones D ON E.ID_Direccion = D.ID_Direccion
INNER JOIN Distritos Di ON D.ID_Distrito = Di.ID_Distrito
INNER JOIN Municipios M ON Di.ID_Municipio = M.ID_Municipio
INNER JOIN Departamentos Dep ON M.ID_Departamento = Dep.ID_Departamento
INNER JOIN TipoEmpleado T ON E.ID_TipoEmpleado = T.ID_TipoEmpleado;

select * from VistaEmpleado;