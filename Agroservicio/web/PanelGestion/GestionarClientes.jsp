<%-- 
    Document   : GestionarClientes
    Created on : 1 dic 2023, 00:09:30
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionarClientes</title>
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
    </head>
    <body>
        <h1>Mostrar Clientes</h1>
        <h2>Listado de Clientes  </h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarCliente">Agregar Cliente</a><br><br>

       <table border="1">
        <thead>
            <tr>
                <th>ID_Cliente</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Dui</th>
                <th>Tipo de Cliente</th>
                <th>Fecha de Registro</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listaCliente}" var="item">
                <tr>
                    <td><c:out value="${item.ID_Cliente}" /></td>
                    <td><c:out value="${item.nombreCliente}" /></td>
                    <td><c:out value="${item.apellidoCliente}" /></td>
                    <td><c:out value="${item.dui}" /></td>
                    <td><c:out value="${item.tipoCliente}" /></td>
                    <td><c:out value="${item.fechaRegistro}" /></td>
                    <td>
                        <button class="open-popup-btn" 
                                onclick=" mostrarDetallesCliente(
                                        '${item.ID_Cliente}',
                                        '${item.nombreCliente}',
                                        '${item.apellidoCliente}',
                                        '${item.telefonoCliente}',
                                        '${item.correo}',
                                        '${item.dui}',
                                        '${item.tipoCliente}',
                                        '${item.fechaRegistro}'
                                    )" > Ver detalles 
                            </button>
                        <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID Cliente: <span id="ID_Cliente"></span></label><br>
                                <label>Nombre Cliente: <span id="nombreCliente"></span></label><br>
                                <label>Apellido Cliente: <span id="apellidoCliente"></span></label><br>
                                <label>Teléfono Cliente: <span id="telefonoCliente"></span></label><br>
                                <label>Correo: <span id="correo"></span></label><br>
                                <label>DUI: <span id="dui"></span></label><br>
                                <label>Tipo de Cliente: <span id="tipoCliente"></span></label><br>
                                <label>Fecha de Registro: <span id="fechaRegistro"></span></label><br>
                                <label>Direccion Completa: <span id="direccionCompleta"></span></label><br>

                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>

                        <form method="POST" action="/Agroservicio/ModificarCliente.jsp" style="display: inline-block;">
                            <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="apellidoCliente" value="${item.apellidoCliente}" />
                                <input type="hidden" name="telefonoCliente" value="${item.telefonoCliente}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="tipoCliente" value="${item.tipoCliente}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />

                            <input type="submit" value="Modificar" />
                        </form>

                        <form method="POST" action="/Agroservicio/EliminarCliente.jsp" style="display: inline-block;">
                            <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                            <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="apellidoCliente" value="${item.apellidoCliente}" />
                                <input type="hidden" name="telefonoCliente" value="${item.telefonoCliente}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="tipoCliente" value="${item.tipoCliente}" />
                                <input type="hidden" name="fechaRegistro" value="${item.fechaRegistro}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />
                                
                            <input type="submit" value="Eliminar" />
                        </form>

                        
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
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
        function mostrarDetallesCliente(
                ID_Cliente,
                nombreCliente,
                apellidoCliente,
                telefonoCliente,
                correo,
                dui,
                tipoCliente,
                fechaRegistro,
                direccionCompleta
        ) {
                //Actualiza los elementos del pop-up con los datos de las Factura
                document.getElementById("ID_Cliente").textContent = ID_Cliente;
                document.getElementById("nombreCliente").textContent = nombreCliente;
                document.getElementById("apellidoCliente").textContent = apellidoCliente;
                document.getElementById("telefonoCliente").textContent = telefonoCliente;
                document.getElementById("correo").textContent = correo;
                document.getElementById("dui").textContent = dui;
                document.getElementById("tipoCliente").textContent = tipoCliente;
                document.getElementById("fechaRegistro").textContent = fechaRegistro;
                document.getElementById("direccionCompleta").textContent = direccionCompleta;
                // Muestra el pop-up
                abrirPopup();
            }

    </script>
    </body>
</html>
