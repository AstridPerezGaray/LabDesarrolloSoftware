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
	
select * from Usuarios;


--/////////////////////////////////////////////////////////////////////////
CREATE VIEW VistaDetalleFacturas AS
SELECT
    DF.ID_DetalleFactura,
    DF.CantidadProducto,
    DF.PrecioUnitario,
    DF.Subtotal,
    DF.IMPUESTO_IVA,
    DF.Total,
    DF.ID_Producto,
    P.NombreProducto,
    P.FechaVencimiento,
    P.Descripcion,
    C.NombreCategoria AS NombreCategoriaProducto
FROM DetalleFacturas DF
INNER JOIN Productos P ON DF.ID_Producto = P.ID_Producto
INNER JOIN Categoria C ON P.ID_Categoria = C.ID_Categoria;

select * from VistaDetalleFacturas;


CREATE VIEW VistaFacturas AS
SELECT 
    F.ID_Factura,
    F.NumeroFactura,
    F.Comentario,
    F.FormaDePago,
    F.ID_DetalleFactura,
    F.ID_Cliente,
    F.ID_Empleado,
    C.NombreCliente,
    C.ApellidoCliente,
    C.TelefonoCliente,
    C.Correo,
    C.DUI,
    C.TipoCliente,
    DF.CantidadProducto,
    DF.PrecioUnitario,
    DF.Subtotal,
    DF.IMPUESTO_IVA,
    DF.Total,
    DF.ID_Producto,
    DF.NombreProducto,
    DF.FechaVencimiento,
    DF.Descripcion,
    DF.NombreCategoriaProducto
FROM Facturas F
INNER JOIN VistaDetalleFacturas DF ON F.ID_DetalleFactura = DF.ID_DetalleFactura
INNER JOIN Clientes C ON F.ID_Cliente = C.ID_Cliente;

select * from Facturas;


--////////////////////////////////////////////////////////////////////////////////////////

CREATE VIEW VistaClientes AS
SELECT
    c.ID_Cliente,
    c.NombreCliente,
    c.ApellidoCliente,
    c.TelefonoCliente,
    c.Correo,
    c.DUI,
    c.TipoCliente,
    c.FechaRegistro,
    CONCAT(d.Linea1, ',', d.Linea2, ',', dis.NombreDistrito, ',', m.NombreMunicipio, ',', dep.NombreDepartamento, ',', CAST(d.CodigoPostal AS char(5))) AS DireccionCompleta
FROM
    Clientes c
INNER JOIN Direcciones d ON c.ID_Direccion = d.ID_Direccion
INNER JOIN Distritos dis ON d.ID_Distrito = dis.ID_Distrito
INNER JOIN Municipios m ON dis.ID_Municipio = m.ID_Municipio
INNER JOIN Departamentos dep ON m.ID_Departamento = dep.ID_Departamento;


drop view VistaClientes
select * from VistaClientes;