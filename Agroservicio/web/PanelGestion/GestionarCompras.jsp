<%-- 
    Document   : GestionarCompras
    Created on : 2 dic 2023, 01:32:14
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionarCompras</title>
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
    </head>
    <body>
        <h1>Gestión de Compras</h1>
        <h2>Listado de Compras</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarCompra">Agregar Compras</a><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID_Compra</th>
                    <th>Cantidad</th>
                    <th>PrecioUnidad</th>
                    <th>DescuetoUnidad</th>
                    <th>FechaPedido</th>
                    <th>FechaRecibido</th>
                    <th>NombreProducto</th>
                    <th>NombreProveedor</th>
                    <th>Acciones</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaCompra}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Compra}" /></td>
                        <td><c:out value="${item.cantidad}" /></td>
                        <td><c:out value="${item.precioUnidad}" /></td>                        
                        <td><c:out value="${item.descuetoUnidad}" /></td> 
                   <!-- <td><c:out value="${item.comentarios}" /></td> -->
                   <!--<td><c:out value="${item.ID_Producto}" /></td> -->
                   <!--<td><c:out value="${item.ID_Pedido}" /></td> -->
                        <td><c:out value="${item.fechaPedido}" /></td> 
                        <td><c:out value="${item.fechaRecibido}" /></td> 
                        <td><c:out value="${item.nombreProducto}" /></td> 
                   <!-- <td><c:out value="${item.ID_Proveedor}" /></td> --> 
                        <td><c:out value="${item.nombreProveedor}" /></td>
                        <!-- AÑADIR OPCIONES DE MODIFICACION Y ELIMINACION -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick = "mostrarDetallesCompra(
                                                    '${item.ID_Compra}',
                                                    '${item.cantidad}',
                                                    '${item.precioUnidad}',
                                                    '${item.descuetoUnidad}',
                                                    '${item.comentarios}',
                                                    '${item.ID_Producto}',
                                                    '${item.ID_Pedido}',
                                                    '${item.fechaPedido}',
                                                    '${item.fechaRecibido}',
                                                    '${item.nombreProducto}',
                                                    '${item.ID_Proveedor}',
                                                    '${item.nombreProveedor}',
                                                    )"> Ver detalles 
                            </button>
                            <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID_Compra <span id="ID_Compra"></span></label><br>
                                <label>Cantidad <span id="cantidad"></span></label><br>
                                <label>PrecioUnidad <span id="precioUnidad"></span></label><br>
                                <label>DescuetoUnidad <span id="descuetoUnidad"></span></label><br>
                                <label>Comentarios <span id="comentarios"></span></label><br>
                                <label>ID_Producto <span id="ID_Producto"></span></label><br>
                                <label>ID_Pedido <span id="ID_Pedido"></span></label><br>
                                <label>fechaPedido <span id="fechaPedido"></span></label><br>
                                <label>fechaRecibido <span id="fechaRecibido"></span></label><br>
                                <label>nombreProducto <span id="nombreProducto"></span></label><br>
                                <label>ID_Proveedor <span id="ID_Proveedor"></span></label><br>
                                <label>nombreProveedor <span id="nombreProveedor"></span></label><br>
                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>

                            <form method="POST" action="/Agroservicio/Modificar/ModificarCompra.jsp">
                                <input type="hidden" name="ID_Compra" value="${item.ID_Compra}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="precioUnidad" value="${item.precioUnidad}" />
                                <input type="hidden" name="descuetoUnidad" value="${item.descuetoUnidad}" />
                                <input type="hidden" name="comentarios" value="${item.comentarios}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="ID_Pedido" value="${item.ID_Pedido}" />
                                <input type="hidden" name="fechaPedido" value="${item.fechaPedido}" />
                                <input type="hidden" name="fechaRecibido" value="${item.fechaRecibido}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/Agroservicio/Eliminar/EliminarCompra.jsp">
                                <input type="hidden" name="ID_Compra" value="${item.ID_Compra}" />
                                <input type="hidden" name="cantidad" value="${item.cantidad}" />
                                <input type="hidden" name="precioUnidad" value="${item.precioUnidad}" />
                                <input type="hidden" name="descuetoUnidad" value="${item.descuetoUnidad}" />
                                <input type="hidden" name="comentarios" value="${item.comentarios}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="ID_Pedido" value="${item.ID_Pedido}" />
                                <input type="hidden" name="fechaPedido" value="${item.fechaPedido}" />
                                <input type="hidden" name="fechaRecibido" value="${item.fechaRecibido}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="ID_Proveedor" value="${item.ID_Proveedor}" />
                                <input type="hidden" name="nombreProveedor" value="${item.nombreProveedor}" />
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
        function mostrarDetallesCompra(ID_Compra, cantidad, precioUnidad, descuetoUnidad, comentarios,
        ID_Producto, ID_Pedido,fechaPedido,fechaRecibido,nombreProducto,ID_Proveedor,nombreProveedor)
        {
            //Actualiza los elementos del pop-up con los datos del empleado
            document.getElementById('ID_Compra').textContent = ID_Compra;
            document.getElementById('cantidad').textContent = cantidad;
            document.getElementById('precioUnidad').textContent = precioUnidad;
            document.getElementById('descuetoUnidad').textContent = descuetoUnidad;
            document.getElementById('comentarios').textContent = comentarios;
            document.getElementById('ID_Producto').textContent = ID_Producto;
            document.getElementById('ID_Pedido').textContent = ID_Pedido;
            document.getElementById('fechaPedido').textContent = fechaPedido;
            document.getElementById('fechaRecibido').textContent = fechaRecibido;
            document.getElementById('nombreProducto').textContent = nombreProducto;
            document.getElementById('ID_Proveedor').textContent = ID_Proveedor;
            document.getElementById('nombreProveedor').textContent = nombreProveedor;

            // Muestra el pop-up
            abrirPopup();
        }
    </script>
</html>
