<%-- 
    Document   : ModificarFactura
    Created on : 30 nov 2023, 22:49:05
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ModificarFactura</title>
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
        <h1>Modificar Proveedor</h1>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarFactura">
            <div>
                <label>ID_Factura</label>
                <input type="text" name="ID_Factura" id="ID_Factura" value="${param.ID_Factura}" readonly /><br>
                <label>Numero Factura:</label>
                <input type="text" name="numeroFactura" id="numeroFactura" value="${param.numeroFactura}" required /><br>
                <label>Comentario:</label>
                <input type="text" name="comentario" id="comentario" value="${param.comentario}" required /><br>
                <label>Forma de Pago:</label>
                <input type="text" name="formaDePago" id="formaDePago" value="${param.formaDePago}" required /><br>
                <label>ID_DetalleFactura:</label>
                <input type="text" name="ID_DetalleFactura" id="ID_DetalleFactura" value="${param.ID_DetalleFactura}" required /><br>
                <label>ID_Cliente:</label>
                <input type="text" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" required /><br>
                <label>ID_Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" value="${param.ID_Empleado}" required /><br>

                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la Factura?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarFacturas">Regresar</a>
            </div>             
        </form>
    </body>
</html>
