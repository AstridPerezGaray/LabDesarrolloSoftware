<%-- 
    Document   : GestionUsuarios
    Created on : 29 nov 2023, 22:33:06
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionUsuarios</title>
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
    </head>
     <body>
        <h1>Gestión de Usuarios</h1>
        <h2>Listado de Usuarios</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarUsuario">Agregar Usuario</a><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID_Usuario</th>
                    <th>Clave</th>
                    <th>ID_Empleado</th>
                    <th>ID_Rol</th>
                    <th>NombresEmpleado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaUsuarios}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Usuario}" /></td>
                        <td><c:out value="${item.clave}" /></td>                        
                        <td><c:out value="${item.ID_Empleado}" /></td>
                        <td><c:out value="${item.ID_Rol}" /></td>
                        <td><c:out value="${item.nombresEmpleado}" /></td>                        
                        <!--<td><c:out value="${item.nombreTipoEmpleado}" /></td> --!>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick = "mostrarDetallesUsuario(
                                                    '${item.ID_Usuario}',
                                                    '${item.usuario}',
                                                    '${item.clave}',
                                                    '${item.ID_Empleado}',
                                                    '${item.ID_Rol}',
                                                    '${item.nombresEmpleado}',
                                                    '${item.nombreTipoEmpleado}',
                                                    '${item.opciones}',
                                                    )"> Ver detalles 
                            </button>
                            <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID_Usuario: <span id="ID_Usuario"></span></label><br>
                                <label>usuario: <span id="usuario"></span></label><br>
                                <label>clave: <span id="clave"></span></label><br>
                                <label>ID_Empleado: <span id="ID_Empleado"></span></label><br>
                                <label>ID_Rol: <span id="ID_Rol"></span></label><br>
                                <label>nombresEmpleado: <span id="nombresEmpleado"></span></label><br>
                                <label>nombreTipoEmpleado: <span id="nombreTipoEmpleado"></span></label><br>
                                <label>opciones <span id="opciones"></span></label><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            <form method="POST" action="/Agroservicio/Modificar/ModificarUsuario.jsp">
                                <input type="hidden" name="ID_Usuario" value="${item.ID_Usuario}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="ID_Rol" value="${item.ID_Rol}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="nombreTipoEmpleado" value="${item.nombreTipoEmpleado}" />
                                <input type="hidden" name="opciones" value="${item.opciones}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/Agroservicio/Eliminar/EliminarUsuario.jsp">
                                <input type="hidden" name="ID_Usuario" value="${item.ID_Usuario}" />
                                <input type="hidden" name="usuario" value="${item.usuario}" />
                                <input type="hidden" name="clave" value="${item.clave}" />
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="ID_Rol" value="${item.ID_Rol}" />
                                <input type="hidden" name="nombresEmpleado" value="${item.nombresEmpleado}" />
                                <input type="hidden" name="nombreTipoEmpleado" value="${item.nombreTipoEmpleado}" />
                                <input type="hidden" name="opciones" value="${item.opciones}" />
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
        function mostrarDetallesUsuario(ID_Usuario, usuario, clave, ID_Empleado, ID_Rol, nombresEmpleado, nombreTipoEmpleado, opciones)
        {
            //Actualiza los elementos del pop-up con los datos del empleado
            document.getElementById('ID_Usuario').textContent = ID_Usuario;
            document.getElementById('usuario').textContent = usuario;
            document.getElementById('clave').textContent = clave;
            document.getElementById('ID_Empleado').textContent = ID_Empleado;
            document.getElementById('ID_Rol').textContent = ID_Rol;
            document.getElementById('nombresEmpleado').textContent = nombresEmpleado;
            document.getElementById('nombreTipoEmpleado').textContent = nombreTipoEmpleado;
            document.getElementById('opciones').textContent = opciones;
            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
