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
        <link rel="stylesheet" type="text/css" href="css/gestion.css"
        
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
