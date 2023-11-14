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
        <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        div {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            background-color: #f2f2f2;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            display: block;
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
        }

        nav ul li a:hover {
            background-color: #ddd;
            color: #4CAF50;
        }
    </style>
    </head>
    <body>
        <div>Bienvenido al Sistema del Agricultor</div>
        <nav>
            <ul>
                <li><a href="/Agroservicio">Inicio del sistema</a></li>
                <li><a href="/Agroservicio?accion=Login">Login</a></li>
                <li><a href="/Agroservicio?accion=RegistrarCategorias">Registro de Categorias</a></li>
                <li><a href="/Agroservicio?accion=RegistrarProductos">Registro de Productos</a></li>
                <li><a href="/Agroservicio?accion=RegistarCompras">Registro de Compras</a></li>
                <li><a href="/Agroservicio?accion=RegistrarVentas">Registro de Ventas</a></li>
                <li><a href="/Agroservicio?accion=RegistrarClientes">Registro de Cliente</a></li>
                <li><a href="/Agroservicio?accion=RegistrarProveedores">Registro de Proveedores</a></li>
                <li><a href="/Agroservicio?accion=GestionarEmpleados">GestionarEmpleados</a></li>
                <li><a href="/Agroservicio?accion=AgregarEmpleado">AgregarEmpleados</a></li>
                <li><a href="/Agroservicio?accion=ModificarEmpleado">ModificarEmpledo</a></li>
                <li><a href="/Agroservicio?accion=GestionarCliente">GestionarClientes</a></li>
                <li><a href="/Agroservicio?accion=MostrarDirecciones">Mostrar Direcciones</a></li>
                <li><a href="/Agroservicio?accion=MostrarFacturas">Mostrar Facturas</a></li>

            </ul>
        </nav>
    </body>
</html>
