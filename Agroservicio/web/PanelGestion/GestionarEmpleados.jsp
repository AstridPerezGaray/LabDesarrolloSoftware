<%-- 
    Document   : GestionarEmpleados
    Created on : 30 nov 2023, 23:05:21
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionarEmpleados</title>
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
    </head>
    <body>  
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarEmpleado">Agregar empleado</a><br><br>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Empleado</th>
                    <th>Nombres</th>
                    <th>apellidosEmpleado</th>
                    <th>Fecha</th>
                    <th>ID TipoEmpleado</th>
                    <th>Tipo Empleado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Empleado}" /></td>
                        <td><c:out value="${item.nombresEmpleado}" /></td>
                        <td><c:out value="${item.apellidosEmpleado}" /></td>
                        <td><c:out value="${item.fechaNac}" /></td>
                    <!--<td><c:out value="${item.telefono}" /></td> -->
                    <!-- <td><c:out value="${item.correo}" /></td> -->
                    <!--<td><c:out value="${item.dui}" /></td> -->
                    <!-- <td><c:out value="${item.isss}" /></td> -->
                    <!-- <td><c:out value="${item.ID_Direccion}" /></td> -->
                        <td><c:out value="${item.ID_TipoEmpleado}" /></td>
                        <td><c:out value="${item.nombreTipoEmpleado}" /></td>
                      <!--  <td><c:out value="${item.direccionCompleta}" /></td> -->

                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick = "mostrarDetallesProveedor(
                                                    '${item.ID_Empleado}',
                                                    '${item.nombresEmpleado}',
                                                    '${item.apellidosEmpleado}',
                                                    '${item.fechaNac}',
                                                    '${item.telefono}',
                                                    '${item.correo}',
                                                    '${item.dui}',
                                                    '${item.isss}',
                                                    '${item.ID_Direccion}',
                                                    '${item.ID_TipoEmpleado}',
                                                    '${item.nombreTipoEmpleado}',
                                                    '${item.direccionCompleta}',
                                                    )"> Ver detalles 
                            </button>
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID_Empleado <span id="ID_Empleado"></span></label><br>
                                <label>nombresEmpleado <span id="nombresEmpleado"></span></label><br>
                                <label>apellidosEmpleado <span id="apellidosEmpleado"></span></label><br>
                                <label>fechaNac <span id="fechaNac"></span></label><br>
                                <label>telefono <span id="telefono"></span></label><br>
                                <label>correo <span id="correo"></span></label><br>
                                <label>dui <span id="dui"></span></label><br>
                                <label>isss <span id="isss"></span></label><br>
                                <label>ID_Direccion <span id="ID_Direccion"></span></label><br>
                                <label>ID_TipoEmpleado <span id="ID_TipoEmpleado"></span></label><br>
                                <label>TipoEmpleado <span id="nombreTipoEmpleado"></span></label><br>
                                <label>direccionCompleta <span id="direccionCompleta"></span></label><br>

                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>


                            <form method="POST" action="/Agroservicio/Modificar/ModificarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="isss" value="${item.isss}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="ID_TipoEmpleado" value="${item.ID_TipoEmpleado}" />
                                <input type="hidden" name="nombreTipoEmpleado" value="${item.nombreTipoEmpleado}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/Agroservicio/Eliminar/EliminarEmpleado.jsp">
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="apellidosEmpleado" value="${item.apellidosEmpleado}" />
                                <input type="hidden" name="fechaNac" value="${item.fechaNac}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="isss" value="${item.isss}" />
                                <input type="hidden" name="ID_Direccion" value="${item.ID_Direccion}" />
                                <input type="hidden" name="ID_TipoEmpleado" value="${item.ID_TipoEmpleado}" />
                                <input type="hidden" name="nombreTipoEmpleado" value="${item.nombreTipoEmpleado}" />
                                <input type="hidden" name="direccionCompleta" value="${item.direccionCompleta}" />
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
        function mostrarDetallesProveedor(ID_Empleado, nombresEmpleado,
                apellidosEmpleado, fechaNac, telefono, correo, dui, isss, 
                ID_Direccion, ID_TipoEmpleado, nombreTipoEmpleado,direccionCompleta)
        {
            //Actualiza los elementos del pop-up con los datos del empleado
            document.getElementById('ID_Empleado').textContent = ID_Empleado;
            document.getElementById('nombresEmpleado').textContent = nombresEmpleado;
            document.getElementById('apellidosEmpleado').textContent = apellidosEmpleado;
            document.getElementById('fechaNac').textContent = fechaNac;
            document.getElementById('telefono').textContent = telefono;
            document.getElementById('correo').textContent = correo;
            document.getElementById('dui').textContent = dui;
            document.getElementById('isss').textContent = isss;
            document.getElementById('ID_Direccion').textContent = ID_Direccion;
            document.getElementById('ID_TipoEmpleado').textContent = ID_TipoEmpleado;
            document.getElementById('nombreTipoEmpleado').textContent = nombreTipoEmpleado;
            document.getElementById('direccionCompleta').textContent = direccionCompleta;

            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
