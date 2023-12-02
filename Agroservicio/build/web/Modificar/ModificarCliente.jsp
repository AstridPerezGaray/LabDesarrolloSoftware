<%-- 
    Document   : ModificarCliente
    Created on : 2 dic 2023, 00:44:34
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ModificarCliente</title>
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
        <h1>Modificar Cliente</h1>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarCliente">
            <div>
                <label>ID Cliente:</label>
                <input type="text" name="ID_Cliente" id="ID_Cliente" value="${param.ID_Cliente}" readonly /><br>
                <label>Nombres:</label>
                <input type="text" name="nombreCliente" id="nombreCliente" value="${param.nombreCliente}" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidoCliente" id="apellidoCliente" value="${param.apellidoCliente}" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefonoCliente" id="telefonoCliente" value="${param.telefonoCliente}" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" value="${param.dui}" required /><br>
                <label>TipoCliente:</label>
                <input type="text" name="tipoCliente" id="tipoCliente" value="${param.tipoCliente}" required /><br>
                <label>Fecha Registro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" value="${param.fechaRegistro}" required /><br>
                <label>Direccion:</label>
                <input type="text" name="direccionCompleta" id="direccionCompleta" value="${param.direccionCompleta}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Cliente?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
