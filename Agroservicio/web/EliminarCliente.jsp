<%-- 
    Document   : EliminarCliente
    Created on : 10 nov 2023, 22:36:58
    Author     : ccerr
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Cliente</title>
        
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
        <h1>Eliminar Cliente</h1>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=EliminarCliente">Eliminar Cliente</a><br><br>

        <c:if test="${requestScope.mensaje_conexion == 'Ok!'}">
            <p>Conexión a la base de datos exitosa.</p>
        </c:if>

        <c:if test="${sessionScope.exito != null}">
            <c:choose>
                <c:when test="${sessionScope.exito}">
                    <p style="color: green;">El Cliente ha sido eliminado con éxito.</p>
                </c:when>
                <c:otherwise>
                    <p style="color: red;">No se pudo eliminar al cliente.</p>
                </c:otherwise>
            </c:choose>
        </c:if>

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=EliminarCliente">
            <label for="id">ID del Cliente:</label>
            <input type="text" name="id" id="id" required>
            <input type="submit" value="Eliminar Cliente">
        </form>
    </body>
</html>
