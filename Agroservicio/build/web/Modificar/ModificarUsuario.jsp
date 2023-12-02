<%-- 
    Document   : ModificarUsuario
    Created on : 29 nov 2023, 23:10:38
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ModificarUsuario</title>
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
        <h1>Modificar Usuario</h1>
        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=ModificarUsuario">
            <div>
                <label>ID_Usuario:</label>
                <input type="text" name="ID_Usuario" id="ID_Usuario" value="${param.ID_Usuario}" readonly /><br>
                <label>Usuario:</label>
                <input type="text" name="usuario" id="usuario" value="${param.usuario}" required /><br>
                <label>Clave:</label>
                <input type="text" name="clave" id="clave" value="${param.clave}" required /><br>
                <label>ID_Rol:</label>
                <input type="text" name="ID_Rol" id="ID_Rol" value="${param.ID_Rol}" required /><br>
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" value="${param.nombresEmpleado}" required /><br>
                <label>Tipo:</label>
                <input type="text" name="nombreTipoEmpleado" id="nombreTipoEmpleado" value="${param.nombreTipoEmpleado}" required /><br>
                <label>Opciones:</label>
                <input type="text" name="opciones" id="opciones" value="${param.opciones}" required /><br>

                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Usuario?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarUsuarios">Regresar</a>
            </div>               
        </form>
    </body>
</html>
