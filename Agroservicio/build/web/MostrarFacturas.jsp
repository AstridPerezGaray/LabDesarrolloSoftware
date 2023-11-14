<%-- 
    Document   : MostrarDirecciones
    Created on : 9 nov 2023, 20:15:45
    Author     : Astrid
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Direcciones</title>
        <style>
            /* Estilo para la tabla */
            table {
                width: 50%;
                margin: 20px auto;
                border-collapse: collapse;
                border: 1px solid #333333; /* Borde similar al de los campos de texto */
            }
            th, td {
                border: 1px solid #333333;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #a0c4ff;
                color: white; /* Ajuste del color del texto para contraste */
            }
            h1 {
                color: #333333;
                text-align: center;
                margin-top: 20px;
            }

            /* Estilo para el formulario */
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            form {
                width: 50%;
                margin: 0 auto;
            }
            label {
                display: block;
                margin-top: 10px;
                color: #333333; /* Color similar al texto de la tabla */
            }
            input {
                width: calc(100% - 20px);
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #333333; /* Borde similar al de la tabla */
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                width: 100%;
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: block;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                margin-top: 20px;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                text-decoration: none;
                color: #333333; /* Color similar al texto de la tabla */
            }
        </style>
        
    </head>
    <body>
        <h1>Mostrar Facturas</h1>
        <h2>Listado de Facturas  </h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

        <table border="1">
            <tr>
                <th>ID_Factura</th>
                <th>numeroFactura</th>
                <th>comentario</th>
                <th>formaDePago</th>
                <th>ID_DetalleFactura</th>
                <th>ID_Cliente</th>
                <th>nombreCliente</th>
                <th>apellidoCliente</th>
                <th>telefonoCliente</th>
                <th>tipoCliente</th>
                <th>ID_Empleado</th>
                <th>nombresEmpleado</th>
                <th>apellidosEmpleado</th>
                <th>cantidadProducto</th>
                <th>precioUnitario</th>
                <th>subtotal</th>
                <th>IMPUESTO_IVA</th>
                <th>total</th>
            </tr>
            <c:forEach items="${listaFactura}" var="item">
                <tr>
                    <td><c:out value="${item.ID_Factura}" /></td>
                    <td><c:out value="${item.numeroFactura}" /></td>
                    <td><c:out value="${item.comentario}" /></td>
                    <td><c:out value="${item.formaDePago}" /></td>
                    <td><c:out value="${item.ID_DetalleFactura}" /></td>
                    <td><c:out value="${item.ID_Cliente}" /></td>
                    <td><c:out value="${item.nombreCliente}" /></td>
                    <td><c:out value="${item.apellidoCliente}" /></td>
                    <td><c:out value="${item.telefonoCliente}" /></td>
                    <td><c:out value="${item.tipoCliente}" /></td>
                    <td><c:out value="${item.ID_Empleado}" /></td>
                    <td><c:out value="${item.nombresEmpleado}" /></td>
                    <td><c:out value="${item.apellidosEmpleado}" /></td>
                    <td><c:out value="${item.cantidadProducto}" /></td>
                    <td><c:out value="${item.precioUnitario}" /></td>
                    <td><c:out value="${item.subtotal}" /></td>
                    <td><c:out value="${item.IMPUESTO_IVA}" /></td>
                    <td><c:out value="${item.total}" /></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
