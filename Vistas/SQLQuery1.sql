use Agroservicio;

CREATE VIEW VistasDireccionCompleta as
SELECT 
	DIR.ID_Direccion,
	DIR.Linea1,
	DIR.linea2,
	DIS.NombreDistrito,
	MUN.NombreMunicipio,
	DEP.NombreDepartamento,
	DEP.Pais,
	DIR.CodigoPostal
FROM Direcciones DIR
INNER JOIN Distritos DIS ON DIR.ID_Distrito = DIS.ID_Distrito
INNER JOIN Municipios MUN ON DIS.ID_Municipio = MUN.ID_Municipio
INNER JOIN Departamentos DEP ON MUN.ID_Departamento = DEP.ID_Departamento;

select * from VistasDireccionCompleta;

--VISTA DE PROVEEDORES
CREATE VIEW VistaProveedores AS 
SELECT
    PRO.ID_Proveedor,
    PRO.NombreProveedor,
    PRO.Telefono,
    PRO.Correo,
    PRO.FechaRegistro,
    PRO.ID_Direccion,
    DIR.Linea1 + ',' + DIR.Linea2 + ',' +
    DIR.NombreDistrito + ',' + DIR.NombreMunicipio + ',' +
    DIR.NombreDepartamento + ',' + DIR.Pais + ',' +
    CAST(DIR.CodigoPostal AS char(5)) AS DireccionCompleta
FROM Proveedores PRO
INNER JOIN VistasDireccionCompleta DIR ON PRO.ID_Direccion = DIR.ID_Direccion;

select * from VistaProveedores;

--VISTA DE PRODUCTOS
CREATE VIEW VistaProductos AS
	SELECT 
	P.ID_Producto,
	P.NombreProducto,
	P.PrecioUnitario,
	P.FechaVencimiento,
	P.Stock,
	P.Descripcion,
	P.ID_Categoria,
	C.NombreCategoria,
	C.DescripcionCategoria
FROM Productos P
INNER JOIN Categoria C ON P.ID_Categoria = C.ID_Categoria;

select * from VistaProductos

--////////////////////////////////////////////////////////

CREATE VIEW VistaRolesCompletos AS
SELECT
    R.ID_Rol,
    R.NombreRol,
    STRING_AGG(Op.NombreOpcion, ', ') AS Opciones
FROM Roles AS R
INNER JOIN AsignacionRolesOpciones Asig ON R.ID_Rol = Asig.ID_Rol
INNER JOIN Opciones Op ON Op.ID_Opcion = Asig.ID_Opcion
GROUP BY R.ID_Rol, R.NombreRol;

select * from VistaRolesCompletos;


CREATE VIEW VistaUsuarios AS
SELECT 
    U.ID_Usuario,
    U.Usuario,
    U.Clave,
    U.ID_Empleado,
    U.ID_Rol,
    E.NombresEmpleado,
    T.NombreTipoEmpleado,
	Vis.Opciones
FROM Usuarios U
INNER JOIN Empleados AS E ON U.ID_Empleado = E.ID_Empleado
INNER JOIN TipoEmpleado AS T ON T.ID_TipoEmpleado = E.ID_TipoEmpleado
INNER JOIN VistaRolesCompletos Vis ON Vis.ID_Rol = U.ID_Rol;

select * from VistaUsuarios;
	