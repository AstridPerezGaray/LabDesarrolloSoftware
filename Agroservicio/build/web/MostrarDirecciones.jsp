<%-- 
    Document   : MostrarDirecciones
    Created on : 9 nov 2023, 20:15:45
    Author     : Astrid
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Direcciones</title>
        <style>
            /* Estilo para la tabla */
            table {
                width: 50%;
                margin: 20px auto;
                border-collapse: collapse;
                border: 1px solid #333333; /* Borde similar al de los campos de texto */
            }
            th, td {
                border: 1px solid #333333;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #a0c4ff;
                color: white; /* Ajuste del color del texto para contraste */
            }
            h1 {
                color: #333333;
                text-align: center;
                margin-top: 20px;
            }

            /* Estilo para el formulario */
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            form {
                width: 50%;
                margin: 0 auto;
            }
            label {
                display: block;
                margin-top: 10px;
                color: #333333; /* Color similar al texto de la tabla */
            }
            input {
                width: calc(100% - 20px);
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #333333; /* Borde similar al de la tabla */
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
                color: #333333; /* Color similar al texto de la tabla */
            }
        </style>
        
    </head>
    <body>
        <h1>Mostrar Direcciones</h1>
        <h2>Listado de Direcciones  </h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

        <table border="1">
            <tr>
                <th>ID_Direccion</th>
                <th>linea1</th>
                <th>linea2</th>
                <th>ID_Distrito</th>
                <th>codigoPostal</th>
                <th>NombreDistrito</th>
                <th>ID_Municipio</th>
                <th>NombreMunicipio</th>
                <th>ID_Departamento</th>
                <th>NombreDepartamento</th>
                <th>Pais</th>
            </tr>
            <c:forEach items="${listaDireccion}" var="item">
                <tr>
                    <td><c:out value="${item.ID_Direccion}" /></td>
                    <td><c:out value="${item.linea1}" /></td>
                    <td><c:out value="${item.linea2}" /></td>
                    <td><c:out value="${item.ID_Distrito}" /></td>
                    <td><c:out value="${item.codigoPostal}" /></td>
                    <td><c:out value="${item.nombreDistrito}" /></td>
                    <td><c:out value="${item.ID_Municipio}" /></td>
                    <td><c:out value="${item.nombreMunicipio}" /></td>
                    <td><c:out value="${item.ID_Departamento}" /></td>
                    <td><c:out value="${item.nombreDepartamento}" /></td>
                    <td><c:out value="${item.pais}" /></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
