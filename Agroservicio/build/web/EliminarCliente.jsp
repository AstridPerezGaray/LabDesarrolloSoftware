<%-- 
    Document   : EliminarCliente
    Created on : 10 nov 2023, 22:36:58
    Author     : ccerr
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Cliente</title>
        <link rel="stylesheet" type="text/css" href="css/eliminar.css"
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
            <label for="id">ID del Cliente:</label>
            <input type="text" name="id" id="id" required>
            <input type="submit" value="Eliminar Cliente">
        </form>
    </body>
</html>
