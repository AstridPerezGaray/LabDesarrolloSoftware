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
        <link rel="stylesheet" type="text/css" href="css/gestion.css"
        
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
