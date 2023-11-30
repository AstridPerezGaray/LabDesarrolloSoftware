use Agroservicio;

CREATE VIEW VistaUsuarios AS
SELECT
	u.ID_Usuario,
    e.NombresEmpleado,
    e.ApellidosEmpleado,
    e.Telefono,
    e.Correo,
    r.NombreRol
FROM Empleados e
JOIN Usuarios u ON e.ID_Empleado = u.ID_Empleado
JOIN Roles r ON u.ID_Rol = r.ID_Rol;


select * from VistaUsuarios;
