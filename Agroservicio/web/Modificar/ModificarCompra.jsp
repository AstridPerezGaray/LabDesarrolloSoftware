<%-- 
    Document   : ModificarCompra
    Created on : 2 dic 2023, 01:46:45
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ModificarCompra</title>
        <link rel="stylesheet" type="text/css" href="../css/modificar.css">
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        <h1>Modificar Compra</h1>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarCompra">
             <div>
                <label>ID_Compra</label>
                <input type="text" name="ID_Compra" id="ID_Compra" value="${param.ID_Compra}" readonly /><br>
                
                <label>cantidad</label>
                <input type="text" name="cantidad" id="cantidad" value="${param.cantidad}" required /><br>
               
                <label>precioUnidad</label>
                <input type="text" name="precioUnidad" id="precioUnidad" value="${param.precioUnidad}" required /><br>
                
                <label>descuetoUnidad</label>
                <input type="text" name="descuetoUnidad" id="descuetoUnidad" value="${param.descuetoUnidad}" required /><br>
                
                <label>comentarios</label>
                <input type="text" name="comentarios" id="comentarios" value="${param.comentarios}" required /><br>
                
                <label>ID_Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" required /><br>
                
                <label>ID_Pedido</label>
                <input type="text" name="ID_Pedido" id="ID_Pedido" value="${param.ID_Pedido}" required /><br>
                
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la compra?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarCompras">Regresar</a>
            </div>             
        </form>
    </body>
</html>
