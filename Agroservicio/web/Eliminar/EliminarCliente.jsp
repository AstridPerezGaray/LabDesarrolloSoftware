<%-- 
    Document   : EliminarCliente
    Created on : 2 dic 2023, 00:57:08
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarCliente</title>
        <link rel="stylesheet" type="text/css" href="../css/eliminar.css">
    </head>
    <body>
        <h1>Eliminar Cliente</h1>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=EliminarCliente">Eliminar Cliente</a><br><br>

        <c:if test="${requestScope.mensaje_conexion == 'Ok!'}">
            <p>Conexión a la base de datos exitosa.</p>
        </c:if>

        <c:if test="${sessionScope.exito != null}">
            <c:choose>
                <c:when test="${sessionScope.exito}">
                    <p style="color: green;">El Cliente ha sido eliminado con éxito.</p>
                </c:when>
                <c:otherwise>
                    <p style="color: red;">No se pudo eliminar al cliente.</p>
                </c:otherwise>
            </c:choose>
        </c:if>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarCliente">
            <label>IID_Cliente: ${param.ID_Cliente}</label><br>
            <label>Nombres: ${param.nombreCliente}</label><br>
            <label>Apellidos: ${param.apellidoCliente}</label><br>
            <label>Telefono: ${param.telefonoCliente}</label><br>
            <label>Correo: ${param.correo}</label><br>
            <label>DUI: ${param.dui}</label><br>
            <label>Fecha de Registro: ${param.fechaRegistro}</label><br>
            <label>Direccion: ${param.direccionCompleta}</label><br>
            <input type="hidden" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" /><br>
            <input type="submit" value="Eliminar Cliente" onclick="return confirm('¿Desea Eliminar el Cliente?')"/><br>
        </form>
            <div>
                <a href="/Agroservicio/?accion=GestionarClientes">Regresar</a><br><br>
            </div> 
    </body>
</html>
