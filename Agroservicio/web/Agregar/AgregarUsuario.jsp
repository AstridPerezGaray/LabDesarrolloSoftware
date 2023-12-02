<%-- 
    Document   : AgregarUsuario
    Created on : 29 nov 2023, 23:13:08
    Author     : Astrid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarUsuario</title>
<<<<<<< HEAD
        <link rel="stylesheet" type="text/css" href="css/agregar.css">
=======
        <link rel="stylesheet" type="text/css" href="../css/agregar.css">
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
    </head>
    <body>
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
<<<<<<< HEAD
        <h1>Agregar Nuevo Usuario</h1>
=======
        <h1>Agregar Nuevo Proveedor</h1>
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37

        <form method="POST" action="/Agroservicio/ServletPrincipal?accion=AgregarUsuario">
            <div>
                <!-- El ID de los Proveedores es autoincrementable -->
                <label>Usuario:</label>
                <input type="text" name="usuario" id="usuario" required /><br>
                <label>Clave:</label>
                <input type="text" name="clave" id="clave" required /><br>
                <label>ID_Empleado:</label>
                <input type="text" name="ID_Empleado" id="ID_Empleado" required /><br>
                <label>ID_Rol:</label>
                <input type="text" name="ID_Rol" id="ID_Rol" required /><br>
<<<<<<< HEAD
=======
                <label>Nombres:</label>
                <input type="text" name="nombresEmpleado" id="nombresEmpleado" required /><br>
                <label>Tipo:</label>
                <input type="text" name="nombreTipoEmpleado" id="nombreTipoEmpleado" required /><br>
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el Usuario?')" /><br><br>
            </div><br>
            <div>
                <a href="/Agroservicio/?accion=GestionarUsuarios">Regresar</a>
            </div>            
        </form>
    </body>
</html>
