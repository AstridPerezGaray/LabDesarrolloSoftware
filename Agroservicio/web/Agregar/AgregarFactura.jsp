<%-- 
    Document   : AgregarFactura
    Created on : 30 nov 2023, 21:50:02
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarFactura</title>
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
        <h1>Agregar Nueva Factura</h1>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=AgregarFactura">
            <div>
                <!-- El ID de los Proveedores es autoincrementable -->
                <label>Numero Factura:</label>
                <input type="text" name="numeroFactura" id="numeroFactura" required /><br>
                <label>Comentario:</label>
                <input type="text" name="comentario" id="comentario" required /><br>
                <label>Forma De Pago:</label>
                <input type="text" name="formaDePago" id="formaDePago" required /><br>
                <label>ID_DetalleFactura:</label>
                <input type="text" name="ID_DetalleFactura" id="ID_DetalleFactura" required /><br>
                <label> ID_Cliente:</label>
                <input type="text" name="ID_Cliente" id="ID_Cliente" required /><br>
                <label> ID_Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" required /><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarFacturas">Regresar</a>
            </div>            
        </form>
    </body>
</html>
