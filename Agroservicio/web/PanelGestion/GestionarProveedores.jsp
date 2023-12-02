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
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
    </head>

    <body>
        <h1>Gestión de Proveedores</h1>
        <h2>Listado de Proveedores</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarProveedor">Agregar Proveedor</a><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID_Proveedor</th>
                    <th>NombreProveedor</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>FechaRegistro</th>
                    <th>Acciones</th>
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
                        <!--<td><c:out value="${item.ID_Direccion}" /></td> --!>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick = "mostrarDetallesProveedor(
                                                    '${item.ID_Proveedor}',
                                                    '${item.nombreProveedor}',
                                                    '${item.telefono}',
                                                    '${item.correo}',
                                                    '${item.fechaRegistro}',
                                                    '${item.ID_Direccion}',
                                                    '${item.direccionCompleta}',
                                                    )"> Ver detalles 
                            </button>
                            <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID Proveedor: <span id="ID_Proveedor"></span></label><br>
                                <label>nombreProveedor: <span id="nombreProveedor"></span></label><br>
                                <label>telefono <span id="telefono"></span></label><br>
                                <label>correo: <span id="correo"></span></label><br>
                                <label>fechaRegistro: <span id="fechaRegistro"></span></label><br>
                                <label>ID_Direccion <span id="ID_Direccion"></span></label><br>
                                <label>direccionCompleta <span id="direccionCompleta"></span></label><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            <form method="POST" action="/Agroservicio/Modificar/ModificarProveedor.jsp">
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/Agroservicio/Eliminar/EliminarProveedor.jsp">
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
    <script>
        function abrirPopup() {
            var popup = document.getElementById('popup');
            var overlay = document.getElementById('overlay');

            if (popup.style.display === 'block') {
                popup.style.display = 'none';
                overlay.style.display = 'none';
            } else {
                popup.style.display = 'block';
                overlay.style.display = 'block';
            }
        }
        function mostrarDetallesProveedor(ID_Proveedor, nombreProveedor, telefono, correo, fechaRegistro, ID_Direccion, direccionCompleta)
        {
            //Actualiza los elementos del pop-up con los datos del empleado
            document.getElementById('ID_Proveedor').textContent = ID_Proveedor;
            document.getElementById('nombreProveedor').textContent = nombreProveedor;
            document.getElementById('telefono').textContent = telefono;
            document.getElementById('correo').textContent = correo;
            document.getElementById('fechaRegistro').textContent = fechaRegistro;
            document.getElementById('ID_Direccion').textContent = ID_Direccion;
            document.getElementById('direccionCompleta').textContent = direccionCompleta;
            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
