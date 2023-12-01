<%-- 
    Document   : EliminarFactura
    Created on : 30 nov 2023, 23:56:15
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarFactura</title>
        <link rel="stylesheet" type="text/css" href="../css/eliminar.css">
    </head>
    <body>
        <h1>Eliminar Factura</h1>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

    <c:if test="${requestScope.mensaje_conexion == 'Ok!'}">
        <p>Conexión a la base de datos exitosa.</p>
    </c:if>

    <c:if test="${sessionScope.exito != null}">
        <c:choose>
            <c:when test="${sessionScope.exito}">
                <p style="color: green;">La Factura ha sido eliminado con éxito.</p>
            </c:when>
            <c:otherwise>
                <p style="color: red;">No se pudo eliminar la Factura.</p>
            </c:otherwise>
        </c:choose>
    </c:if>
    <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarFactura">
        <div>
            <label>ID_Factura: ${param.ID_Factura}</label><br>
            <label>NumeroFactura: ${param.numeroFactura}</label><br>
            <label>Cmentario: ${param.comentario}</label><br>
            <label>FormaDePago: ${param.formaDePago}</label><br>
            <label>ID_DetalleFactura: ${param.ID_DetalleFactura}</label><br>
            <label>ID_Cliente: ${param.ID_Cliente}</label><br>
            <input type="hidden" name="ID_Factura" id="ID_Factura" value="${param.ID_Factura}" /><br><br>
            <input type="submit" value="Eliminar Factura" onclick="return confirm('¿Desea Eliminar la Factura?')"/><br><br>
        </div>
        <div>
            <a href="/Agroservicio/?accion=GestionarFacturas">Regresar</a>
        </div>  
    </form>
</body>
</html>
