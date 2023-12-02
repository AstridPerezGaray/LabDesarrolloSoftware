<%-- 
    Document   : GestionarFacturas
    Created on : 30 nov 2023, 20:44:34
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionFacturas</title>
        <link rel="stylesheet" type="text/css" href="css/gestion.css">
        <link rel="stylesheet" type="text/css" href="css/pop-up.css">
    </head>
    <body>
        <h1>Gestión de Facturas</h1>
        <h2>Listado de Facturas</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>
        <a href="/Agroservicio?accion=AgregarFactura">Agregar Factura</a><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID_Factura</th>
                    <th>NumeroFactura</th>
                    <th>FormaDePago</th>
                    <th>ID_DetalleFactura</th>
                    <th>ID_Cliente</th>
                    <th>NombreCliente</th>
                    <th>CantidadProducto</th>
                    <th>Total</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaFactura}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Factura}" /></td>
                        <td><c:out value="${item.numeroFactura}" /></td> 
                        <td><c:out value="${item.formaDePago}" /></td>
                        <td><c:out value="${item.ID_DetalleFactura}" /></td>
                        <td><c:out value="${item.ID_Cliente}" /></td>
                        <td><c:out value="${item.nombreCliente}" /></td>
                        <td><c:out value="${item.cantidadProducto}" /></td>
                        <td><c:out value="${item.total}" /></td>
                        <!--<td><c:out value="${item.ID_Producto}" />/td> --!>
                        <!-- Agregar botones de Modificar y Eliminar -->
                        <td>
                            <button class="open-popup-btn"
                                    onclick="mostrarDetallesFactura(
                                                '${item.ID_Factura}',
                                                '${item.numeroFactura}',
                                                '${item.comentario}',
                                                '${item.formaDePago}',
                                                '${item.ID_DetalleFactura}',
                                                '${item.ID_Cliente}',
                                                '${item.ID_Empleado}',
                                                '${item.nombreCliente}',
                                                '${item.apellidoCliente}',
                                                '${item.telefonoCliente}',
                                                '${item.correo}',
                                                '${item.dui}',
                                                '${item.tipoCliente}',
                                                '${item.cantidadProducto}',
                                                '${item.precioUnitario}',
                                                '${item.subtotal}',
                                                '${item.IMPUESTO_IVA}',
                                                '${item.total}',
                                                '${item.ID_Producto}',
                                                '${item.nombreProducto}',
                                                '${item.fechaVencimiento}',
                                                '${item.descripcion}',
                                                '${item.nombreCategoriaProducto}'
                                            )"> Ver detalles 
                            </button>

                            <!-- Contenedor del pop-up -->
                            <div class="overlay" id="overlay"></div>
                            <div class="popup-container" id="popup">
                                <label>ID Factura: <span id="ID_Factura"></span></label><br>
                                <label>Número de Factura: <span id="numeroFactura"></span></label><br>
                                <label>Comentario: <span id="comentario"></span></label><br>
                                <label>Forma de Pago: <span id="formaDePago"></span></label><br>
                                <label>ID Detalle Factura: <span id="ID_DetalleFactura"></span></label><br>
                                <label>ID Cliente: <span id="ID_Cliente"></span></label><br>
                                <label>Nombre Cliente: <span id="nombreCliente"></span></label><br>
                                <label>Apellido Cliente: <span id="apellidoCliente"></span></label><br>
                                <label>Teléfono Cliente: <span id="telefonoCliente"></span></label><br>
                                <label>Correo: <span id="correo"></span></label><br>
                                <label>DUI: <span id="dui"></span></label><br>
                                <label>Tipo de Cliente: <span id="tipoCliente"></span></label><br>
                                <label>Cantidad de Producto: <span id="cantidadProducto"></span></label><br>
                                <label>Precio Unitario: <span id="precioUnitario"></span></label><br>
                                <label>Subtotal: <span id="subtotal"></span></label><br>
                                <label>IMPUESTO_IVA: <span id="IMPUESTO_IVA"></span></label><br>
                                <label>Total: <span id="total"></span></label><br>
                                <label>ID Producto: <span id="ID_Producto"></span></label><br>
                                <label>Nombre Producto: <span id="nombreProducto"></span></label><br>
                                <label>Fecha de Vencimiento: <span id="fechaVencimiento"></span></label><br>
                                <label>Descripción: <span id="descripcion"></span></label><br>
                                <label>Nombre de la Categoría del Producto: <span id="nombreCategoriaProducto"></span></label><br>

                                <button onclick="abrirPopup()">Cerrar</button>
                            </div>
                            <form method="POST" action="/Agroservicio/Modificar/ModificarFactura.jsp">
                                <input type="hidden" name="ID_Factura" value="${item.ID_Factura}" />
                                <input type="hidden" name="numeroFactura" value="${item.numeroFactura}" />
                                <input type="hidden" name="comentario" value="${item.comentario}" />
                                <input type="hidden" name="formaDePago" value="${item.formaDePago}" />
                                <input type="hidden" name="ID_DetalleFactura" value="${item.ID_DetalleFactura}" />
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="ID_Empleado" value="${item.ID_Empleado}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="apellidoCliente" value="${item.apellidoCliente}" />
                                <input type="hidden" name="telefonoCliente" value="${item.telefonoCliente}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="tipoCliente" value="${item.tipoCliente}" />
                                <input type="hidden" name="cantidadProducto" value="${item.cantidadProducto}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="subtotal" value="${item.subtotal}" />
                                <input type="hidden" name="IMPUESTO_IVA" value="${item.IMPUESTO_IVA}" />
                                <input type="hidden" name="total" value="${item.total}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="fechaVencimiento" value="${item.fechaVencimiento}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="nombreCategoriaProducto" value="${item.nombreCategoriaProducto}" />

                                <input type="submit" value="Modificar" />
                            </form>    
                            <form method="POST" action="/Agroservicio/Eliminar/EliminarFactura.jsp">
                                <input type="hidden" name="ID_Factura" value="${item.ID_Factura}" />
                                <input type="hidden" name="numeroFactura" value="${item.numeroFactura}" />
                                <input type="hidden" name="comentario" value="${item.comentario}" />
                                <input type="hidden" name="formaDePago" value="${item.formaDePago}" />
                                <input type="hidden" name="ID_DetalleFactura" value="${item.ID_DetalleFactura}" />
                                <input type="hidden" name="ID_Cliente" value="${item.ID_Cliente}" />
                                <input type="hidden" name="nombreCliente" value="${item.nombreCliente}" />
                                <input type="hidden" name="apellidoCliente" value="${item.apellidoCliente}" />
                                <input type="hidden" name="telefonoCliente" value="${item.telefonoCliente}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="dui" value="${item.dui}" />
                                <input type="hidden" name="tipoCliente" value="${item.tipoCliente}" />
                                <input type="hidden" name="cantidadProducto" value="${item.cantidadProducto}" />
                                <input type="hidden" name="precioUnitario" value="${item.precioUnitario}" />
                                <input type="hidden" name="subtotal" value="${item.subtotal}" />
                                <input type="hidden" name="IMPUESTO_IVA" value="${item.IMPUESTO_IVA}" />
                                <input type="hidden" name="total" value="${item.total}" />
                                <input type="hidden" name="ID_Producto" value="${item.ID_Producto}" />
                                <input type="hidden" name="nombreProducto" value="${item.nombreProducto}" />
                                <input type="hidden" name="fechaVencimiento" value="${item.fechaVencimiento}" />
                                <input type="hidden" name="descripcion" value="${item.descripcion}" />
                                <input type="hidden" name="nombreCategoriaProducto" value="${item.nombreCategoriaProducto}" />
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
        function mostrarDetallesFactura(
                ID_Factura,
                numeroFactura,
                comentario,
                formaDePago,
                ID_DetalleFactura,
                ID_Cliente,
                ID_Empleado,
                nombreCliente,
                apellidoCliente,
                telefonoCliente,
                correo,
                dui,
                tipoCliente,
                cantidadProducto,
                precioUnitario,
                subtotal,
                IMPUESTO_IVA,
                total,
                ID_Producto,
                nombreProducto,
                fechaVencimiento,
                descripcion,
                nombreCategoriaProducto
        ) {
                //Actualiza los elementos del pop-up con los datos de las Factura
                document.getElementById('ID_Factura').textContent = ID_Factura;
                document.getElementById('numeroFactura').textContent = numeroFactura;
                document.getElementById('comentario').textContent = comentario;
                document.getElementById('formaDePago').textContent = formaDePago;
                document.getElementById('ID_DetalleFactura').textContent = ID_DetalleFactura;
                document.getElementById('ID_Cliente').textContent = ID_Cliente;
                document.getElementById('ID_Cliente').textContent = ID_Empleado;
                document.getElementById('nombreCliente').textContent = nombreCliente;
                document.getElementById('apellidoCliente').textContent = apellidoCliente;
                document.getElementById('telefonoCliente').textContent = telefonoCliente;
                document.getElementById('correo').textContent = correo;
                document.getElementById('dui').textContent = dui;
                document.getElementById('tipoCliente').textContent = tipoCliente;
                document.getElementById('cantidadProducto').textContent = cantidadProducto;
                document.getElementById('precioUnitario').textContent = precioUnitario;
                document.getElementById('subtotal').textContent = subtotal;
                document.getElementById('IMPUESTO_IVA').textContent = IMPUESTO_IVA;
                document.getElementById('total').textContent = total;
                document.getElementById('ID_Producto').textContent = ID_Producto;
                document.getElementById('nombreProducto').textContent = nombreProducto;
                document.getElementById('fechaVencimiento').textContent = fechaVencimiento;
                document.getElementById('descripcion').textContent = descripcion;
                document.getElementById('nombreCategoriaProducto').textContent = nombreCategoriaProducto;
                // Muestra el pop-up
                abrirPopup();
            }

    </script>
</html>
