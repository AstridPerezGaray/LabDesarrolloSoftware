use Agroservicio;

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
    d.Linea1,
    d.linea2,
    m.NombreMunicipio,
    dep.NombreDepartamento
FROM
    Clientes c
INNER JOIN Direcciones d ON c.ID_Direccion = d.ID_Direccion
INNER JOIN Distritos dis ON d.ID_Distrito = dis.ID_Distrito
INNER JOIN Municipios m ON dis.ID_Municipio = m.ID_Municipio
INNER JOIN Departamentos dep ON m.ID_Departamento = dep.ID_Departamento;


select * from VistaClientes;