<%-- 
    Document   : EliminarInventario
    Created on : 2 dic 2023, 02:10:21
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarInventario</title>
        <link rel="stylesheet" type="text/css" href="../css/eliminar.css">
    </head>
    <body>
        <h1>Eliminar Inventario</h1>
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
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarInventario">
            <div>
                <label>ID_Inventario ${param.ID_Inventario}</label><br>
                <label>fechaRegistro ${param.fechaRegistro}</label><br>
                <label>tipoTransaccion ${param.tipoTransaccion}</label><br>
                <label>cantidad ${param.cantidad}</label><br>
                <label>ubicacion: ${param.ubicacion}</label><br>
                <label>ID_Producto ${param.ID_Producto}</label><br>
                <input type="hidden" name="ID_Inventario" id="ID_Inventario" value="${param.ID_Inventario}" /><br><br>
                <input type="submit" value="Eliminar Inventario" onclick="return confirm('¿Desea Eliminar el inventario')"/><br><br>
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarInventarios">Regresar</a>
            </div>  
        </form>
    </body>
</html>
