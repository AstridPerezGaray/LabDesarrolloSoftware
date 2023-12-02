<%-- 
    Document   : GestionarInventarios
    Created on : 2 dic 2023, 01:59:55
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionarInventarios</title>
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
    </head>
    <body>
        <h1>Gestión de Inventario</h1>
        <h2>Listado de Inventario</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarInventario">Agregar Inventario</a><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID_Inventario</th>
                    <th>FechaRegistro</th>
                    <th>TipoTransaccion</th>
                    <th>Cantidad</th>
                    <th>Ubicacion</th>
                    <th>ID_Producto</th>
                    <th>Acciones</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaInventario}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Inventario}" /></td>
                        <td><c:out value="${item.fechaRegistro}" /></td>
                        <td><c:out value="${item.tipoTransaccion}" /></td>                        
                        <td><c:out value="${item.cantidad}" /></td>
                        <td><c:out value="${item.ubicacion}" /></td>
                        <td><c:out value="${item.ID_Producto}" /></td>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <form method="POST" action="/Agroservicio/Modificar/ModificarInventario.jsp">
                                <input type="hidden" name="ID_Inventario" value="${item.ID_Inventario}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="tipoTransaccion" value="${item.tipoTransaccion}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="ubicacion" value="${item.ubicacion}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/Agroservicio/Eliminar/EliminarInventario.jsp">
                                <input type="hidden" name="ID_Inventario" value="${item.ID_Inventario}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="tipoTransaccion" value="${item.tipoTransaccion}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="ubicacion" value="${item.ubicacion}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
