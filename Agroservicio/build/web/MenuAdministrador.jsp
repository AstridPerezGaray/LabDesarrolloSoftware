<%-- 
    Document   : MenuAdministrador
    Created on : 5 oct 2023, 11:39:47
    Author     : A22-PC-17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú Administrador</title>
        <link rel="stylesheet" type="text/css" href="css/menu.css"
    </head>
    <body>
        <div>Bienvenido al Sistema del Agricultor</div>
        <nav>
            <ul>
                <li><a href="/Agroservicio">Inicio del sistema</a></li>
                <li><a href="/Agroservicio?accion=Login">Login</a></li>
                <li><a href="/Agroservicio?accion=GestionarEmpleados">GestionarEmpleados</a></li>
                <li><a href="/Agroservicio?accion=AgregarEmpleado">AgregarEmpleados</a></li>
                <li><a href="/Agroservicio?accion=GestionarCliente">GestionarClientes</a></li>
                <li><a href="/Agroservicio?accion=MostrarDirecciones">Mostrar Direcciones</a></li>
                <li><a href="/Agroservicio?accion=MostrarFacturas">Mostrar Facturas</a></li>
                <li><a href="/Agroservicio?accion=GestionarProveedores">Gestionar Proveedores</a></li>

            </ul>
        </nav>
    </body>
</html>
