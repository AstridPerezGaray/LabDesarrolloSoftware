<%-- 
    Document   : EliminarCompra
    Created on : 2 dic 2023, 01:45:54
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EliminarCompra</title>
        <link rel="stylesheet" type="text/css" href="../css/eliminar.css">
    </head>
    <body>
        <h1>Eliminar Compras</h1>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

        <c:if test="${requestScope.mensaje_conexion == 'Ok!'}">
            <p>Conexión a la base de datos exitosa.</p>
        </c:if>

        <c:if test="${sessionScope.exito != null}">
            <c:choose>
                <c:when test="${sessionScope.exito}">
                    <p style="color: green;">La compra ha sido eliminado con éxito.</p>
                </c:when>
                <c:otherwise>
                    <p style="color: red;">No se pudo eliminar al Proveedor.</p>
                </c:otherwise>
            </c:choose>
        </c:if>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarCompra">
            <div>
                <label>ID_Compra ${param.ID_Compra}</label><br>
                <label>cantidad ${param.cantidad}</label><br>
                <label>precioUnidad ${param.precioUnidad}</label><br>
                <label>descuetoUnidad ${param.descuetoUnidad}</label><br>
                <label>comentarios ${param.comentarios}</label><br>
                <label>ID_Producto ${param.ID_Producto}</label><br>
                <label>ID_Pedido ${param.ID_Pedido}</label><br>

                <input type="hidden" name="ID_Compra" id="ID_Compra" value="${param.ID_Compra}" /><br><br>
                <input type="submit" value="Eliminar Inventario" onclick="return confirm('¿Desea Eliminar la compra')"/><br><br>
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarCompras">Regresar</a>
            </div>  
        </form>
    </body>
</html>
