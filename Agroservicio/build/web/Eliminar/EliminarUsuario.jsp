<%-- 
    Document   : EliminarUsuario
    Created on : 29 nov 2023, 23:10:11
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarUsuario</title>
        <link rel="stylesheet" type="text/css" href="../css/eliminar.css">
    </head>
    <body>
        <h1>Eliminar Usuario</h1>
        <br>
        <h3>Conexión: ${mensaje_conexion}</h3>

        <c:if test="${mensaje_conexion == 'Ok!'}">
            <p>Conexión a la base de datos exitosa.</p>
        </c:if>

        <c:if test="${sessionScope.exito != null}">
            <c:choose>
                <c:when test="${sessionScope.exito}">
                    <p style="color: green;">El Usuario ha sido eliminado con éxito.</p>
                </c:when>
                <c:otherwise>
                    <p style="color: red;">No se pudo eliminar al Usuario.</p>
                </c:otherwise>
            </c:choose>
        </c:if>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarUsuario">
            <div>
                <label>ID_Usuario ${param.ID_Usuario}</label><br>
                <label>Usuario: ${param.usuario}</label><br>
                <label>Clave: ${param.clave}</label><br>
                <label>ID_Empleado: ${param.ID_Empleado}</label><br>
                <label>ID_Rol: ${param.ID_Rol}</label><br>
                <label>Nombres: ${param.nombresEmpleado}</label><br>
                <label>Tipo: ${param.nombreTipoEmpleado}</label><br>
                <label>Opciones: ${param.opciones}</label><br>
                <input type="hidden" name="ID_Usuario" value="${param.ID_Usuario}" />
                <input type="submit" value="Eliminar Usuario" onclick="return confirm('¿Desea eliminar el Usuario?')"/><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarUsuarios">Regresar</a>
            </div>
        </form>
    </body>

</html>
