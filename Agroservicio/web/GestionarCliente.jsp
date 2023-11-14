<%-- 
    Document   : GestionarCliente
    Created on : 8 nov 2023, 19:13:44
    Author     : ccerr
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionarClientes</title>
        <link rel="stylesheet" type="text/css" href="gestion.css"
    </head>
    <body>
        <h1>Mostrar Clientes</h1>
        <h2>Listado de Clientes  </h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarCliente">Agregar Cliente</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Cliente</th>
                    <th>nombreCliente</th>
                    <th>apellidoCliente</th>
                    <th>telefono</th>
                    <th>correo</th>
                    <th>dui</th>
                    <th>tipoCliente</th>
                    <th>fechaRegistro</th>
                    <th>ID_Direccion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCliente}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Cliente}" /></td>
                        <td><c:out value="${item.nombreCliente}" /></td>
                        <td><c:out value="${item.apellidoCliente}" /></td>
                        <td><c:out value="${item.telefonoCliente}" /></td>
                        <td><c:out value="${item.correo}" /></td>
                        <td><c:out value="${item.dui}" /></td>
                        <td><c:out value="${item.tipoCliente}" /></td>
                        <td><c:out value="${item.fechaRegistro}" /></td>
                        <td><c:out value="${item.ID_Direccion}" /></td>
                        <td>
                            <form method="POST" action="/Agroservicio/ModificarCliente.jsp" style="display: inline-block;">
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="apellidoCliente" value="${item.apellidoCliente}" />
                                <input type="hidden" name="telefono" value="${item.telefonoCliente}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="tipoCliente" value="${item.tipoCliente}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/Agroservicio/EliminarCliente.jsp" style="display: inline-block;">
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="apellidoCliente" value="${item.apellidoCliente}" />
                                <input type="hidden" name="telefono" value="${item.telefonoCliente}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="tipoCliente" value="${item.tipoCliente}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
