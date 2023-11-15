<%-- 
    Document   : GestionarEmpleados
    Created on : 1 nov 2023, 14:51:36
    Author     : ccerr
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Proveedores</title>
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
    </head>

    <body>
        <h1>Gestión de Proveedores</h1>
        <h2>Listado de Proveedores</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Proveedor</th>
                    <th>NombreProveedor</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>FechaRegistro</th>
                    <th>Linea1</th>
                    <th>linea2</th>
                    <th>NombreDistrito</th>
                    <th>NombreMunicipio</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProveedor}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Proveedor}" /></td>
                        <td><c:out value="${item.nombreProveedor}" /></td>
                        <td><c:out value="${item.telefono}" /></td>                        
                        <td><c:out value="${item.correo}" /></td>
                        <td><c:out value="${item.fechaRegistro}" /></td>
                        <td><c:out value="${item.linea1}" /></td>
                        <td><c:out value="${item.linea2}" /></td>
                        <td><c:out value="${item.nombreDistrito}" /></td>
                        <td><c:out value="${item.nombreMunicipio}" /></td>
                         <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                         <td>
                            <%--<form method="POST" action="/Agroservicio/ModificarEmpleado.jsp">--%>
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="nombreDistrito" value="${item.nombreDistrito}" />
                                <input type="hidden" name="nombreMunicipio" value="${item.nombreMunicipio}" /> 
                                <input type="submit" value="Modificar" />
                            </form>    
                            <%--<form method="POST" action="/Agroservicio/EliminarEmpleado.jsp"--%>
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="linea1" value="${item.linea1}" />
                                <input type="hidden" name="linea2" value="${item.linea2}" />
                                <input type="hidden" name="nombreDistrito" value="${item.nombreDistrito}" />
                                <input type="hidden" name="nombreMunicipio" value="${item.nombreMunicipio}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
