<%-- 
    Document   : AgregarCliente
    Created on : 7 nov 2023, 19:29:05
    Author     : ccerr
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>
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
        <h1>Agregar nuevo Cliente</h1>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=AgregarCliente">
            <div>
                <!-- El ID de los clientes es autoincrementable -->
                <label>Nombres:</label>
                <input type="text" name="nombreCliente" id="nombreCliente" required /><br>
                <label>Apellidos:</label>
                <input type="text" name="apellidoCliente" id="apellidoCliente" required /><br>
                <label>Teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" required /><br>
                <label>Tipo Cliente:</label>
                <input type="text" name="tipoCliente" id="tipoCliente" required /><br>
                <label>Fecha Registro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" required /><br>
                <label>ID Dirección:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el cliente?')" /><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarCliente">Regresar</a>
            </div>            
        </form>
    </body>
</html>
