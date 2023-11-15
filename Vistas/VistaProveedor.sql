use Agroservicio;
CREATE VIEW VistaProveedores AS 
SELECT
	P.ID_Proveedor,
	P.NombreProveedor,
	P.Telefono,
	P.Correo,
	P.FechaRegistro,
	D.Linea1,
	D.linea2,
	Di.NombreDistrito,
	M.NombreMunicipio
FROM Proveedores P
INNER JOIN Direcciones D ON P.ID_Direccion = D.ID_Direccion
INNER JOIN Distritos Di ON D.ID_Distrito = Di.ID_Distrito
INNER JOIN Municipios M ON Di.ID_Municipio = M.ID_Municipio
INNER JOIN Departamentos Dep ON M.ID_Departamento = Dep.ID_Departamento;

select * from VistaProveedores;

