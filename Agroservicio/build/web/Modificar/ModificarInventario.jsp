<%-- 
    Document   : ModificarInventario
    Created on : 2 dic 2023, 02:11:49
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ModificarInventario</title>
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
        <h1>Modificar Inventario</h1>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarInventario">
            <div>
                <label>ID_Inventario</label>
                <input type="text" name="ID_Inventario" id="ID_Inventario" value="${param.ID_Inventario}" readonly /><br>
                <label>Fecha de Registro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" value="${param.fechaRegistro}" required /><br>
                <label>TipoTransaccion</label>
                <input type="text" name="tipoTransaccion" id="tipoTransaccion" value="${param.tipoTransaccion}" required /><br>
                <label>cantidad:</label>
                <input type="text" name="cantidad" id="cantidad" value="${param.cantidad}" required /><br>
                <label>ubicacion</label>
                <input type="text" name="ubicacion" id="ubicacion" value="${param.ubicacion}" required /><br>
                <label>ID_Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" value="${param.ID_Producto}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el proveedor?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarProveedores">Regresar</a>
            </div>             
        </form>
    </body>
</html>
