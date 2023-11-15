<%-- 
    Document   : EliminarEmpleado
    Created on : 8 nov 2023, 19:30:59
    Author     : Astrid
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/eliminar.css"
    </head>
    <body>
        <h1>Eliminar Empleado</h1>
        <h2>Eliminar Empleado</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=EliminarEmpleado">Eliminar Empleado</a><br><br>

        <c:if test="${requestScope.mensaje_conexion == 'Ok!'}">
            <p>Conexión a la base de datos exitosa.</p>
        </c:if>

        <c:if test="${sessionScope.exito != null}">
            <c:choose>
                <c:when test="${sessionScope.exito}">
                    <p style="color: green;">El empleado ha sido eliminado con éxito.</p>
                </c:when>
                <c:otherwise>
                    <p style="color: red;">No se pudo eliminar al empleado.</p>
                </c:otherwise>
            </c:choose>
        </c:if>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarEmpleado">
            <label for="id">ID del Empleado:</label>
            <input type="text" name="id" id="id" required>
            <input type="submit" value="Eliminar Empleado">
        </form>
    </body>
</html>
