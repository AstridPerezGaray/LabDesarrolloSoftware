<%-- 
    Document   : AgregarCompra
    Created on : 2 dic 2023, 01:44:49
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarCompra</title>
        <link rel="stylesheet" type="text/css" href="css/agregar.css">
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
        <h1>Agregar Nueva Compra</h1>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=AgregarCompra">
            <div>
                <!-- El ID de los Proveedores es autoincrementable -->
                <label>Cantidad:</label>
                <input type="text" name="cantidad" id="cantidad" required /><br>

                <label>PrecioUnidad:</label>
                <input type="text" name="precioUnidad" id="precioUnidad" required /><br>

                <label>DescuetoUnidad:</label>
                <input type="text" name="descuetoUnidad" id="descuetoUnidad" required /><br>

                <label>Comentarios:</label>
                <input type="text" name="comentarios" id="comentarios" required /><br>

                <label> ID_Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" required /><br>

                <label> ID_Pedido</label>
                <input type="text" name="ID_Pedido" id="ID_Pedido" required /><br>

                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la Compra?')" /><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarCompras">Regresar</a>
            </div>            
        </form>
    </body>
</html>
