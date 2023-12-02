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
        <title>Eliminar Proveedor</title>
        <link rel="stylesheet" type="text/css" href="../css/eliminar.css"> 
    </head>
    <body>
        <h1>Eliminar Proveedor</h1>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

    <c:if test="${requestScope.mensaje_conexion == 'Ok!'}">
        <p>Conexión a la base de datos exitosa.</p>
    </c:if>

    <c:if test="${sessionScope.exito != null}">
        <c:choose>
            <c:when test="${sessionScope.exito}">
                <p style="color: green;">El Proveedor ha sido eliminado con éxito.</p>
            </c:when>
            <c:otherwise>
                <p style="color: red;">No se pudo eliminar al Proveedor.</p>
            </c:otherwise>
        </c:choose>
    </c:if>
    <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarProveedor">
        <div>
            <label>ID_Proveedor: ${param.ID_Proveedor}</label><br>
            <label>Nombres: ${param.nombreProveedor}</label><br>
            <label>Telefono: ${param.telefono}</label><br>
            <label>Correo: ${param.correo}</label><br>
            <label>Fecha de Registro: ${param.fechaRegistro}</label><br>
            <label>ID_Direccion: ${param.ID_Direccion}</label><br>
            <input type="hidden" name="ID_Proveedor" id="ID_Proveedor" value="${param.ID_Proveedor}" /><br><br>
            <input type="submit" value="Eliminar Proveedor" onclick="return confirm('¿Desea Eliminar el Proveedor?')"/><br><br>
        </div>
        <div>
            <a href="/Agroservicio/?accion=GestionarProveedores">Regresar</a>
        </div>  
    </form>
</body>
</html>