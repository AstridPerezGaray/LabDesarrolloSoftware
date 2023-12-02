<%-- 
    Document   : AgregarInventario
    Created on : 2 dic 2023, 02:08:33
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarInventario</title>
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
        <h1>Agregar Nuevo Inventario</h1>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=AgregarInventario">
            <div>
                <!-- El ID de los Proveedores es autoincrementable -->
                <label>FechaRegistro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" required /><br>

                <label>tipoTransaccion:</label>
                <input type="text" name="tipoTransaccion" id="tipoTransaccion" required /><br>

                <label>Cantidad:</label>
                <input type="text" name="cantidad" id="cantidad" required /><br>

                <label>Ubicacion</label>
                <input type="text" name="ubicacion" id="ubicacion" required /><br>

                <label> ID ID_Producto</label>
                <input type="text" name="ID_Producto" id="ID_Producto" required /><br>
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar en inventario?')" /><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarInventarios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
