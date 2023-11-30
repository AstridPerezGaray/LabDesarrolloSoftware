<%-- 
    Document   : ModificarCliente
    Created on : 10 nov 2023, 10:40:39
    Author     : ccerr
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/modificar.css">

        <title>ModificarProveedor</title>
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
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarProveedor">
            <div>
                <label>ID_Proveedor</label>
                <input type="text" name="ID_Proveedor" id="ID_Proveedor" value="${param.ID_Proveedor}" readonly /><br>
                <label>Nombres:</label>
                <input type="text" name="nombreProveedor" id="nombreProveedor" value="${param.nombreProveedor}" required /><br>
                <label>Telefono</label>
                <input type="text" name="telefono" id="telefono" value="${param.telefono}" required /><br>
                <label>Correo</label>
                <input type="text" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>Fecha de Registro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" value="${param.fechaRegistro}" required /><br>
                <label>ID_Direccion</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" required /><br>

                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el proveedor?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarProveedores">Regresar</a>
            </div>             
        </form>
    </body>
</html>
