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
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            h1 {
                color: #333333;
                text-align: center;
            }
            form {
                width: 50%;
                margin: 0 auto;
            }
            label {
                display: block;
                margin-top: 10px;
                color: #555555;
            }
            input {
                width: calc(100% - 20px);
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                width: 100%;
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: block;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                margin-top: 20px;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                text-decoration: none;
                color: #333333;
            }
        </style>

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
                <input type="text" name="telefonoCliente" id="telefono" value="${param.telefono}" required /><br>
                <label>Correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>DUI:</label>
                <input type="text" name="dui" id="dui" value="${param.dui}" required /><br>
                <label>TipoCliente:</label>
                <input type="text" name="tipoCliente" id="tipoCliente" value="${param.tipoCliente}" required /><br>
                <label>Fecha Registro:</label>
                <input type="date" name="fechaRegistro" id="fechaRegistro" value="${param.fechaRegistro}" required /><br><br>  

                <label>ID_Direccion:</label>
                <input type="text" name="ID_Direccion" id="ID_Direccion" value="${param.ID_Direccion}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Cliente?')" /><br><br> 
            </div>
            <div>
                <a href="/Agroservicio/?accion=GestionarCliente">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
