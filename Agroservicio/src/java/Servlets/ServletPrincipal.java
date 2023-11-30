/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;
import Models.ViewModelCliente;
import Models.ViewModelDirecciones;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.PreparedStatement;
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import Models.ViewModelEmpleados;
import Models.ViewModelFacturas;
import Models.ViewModelProveedores;
import Models.ViewModelUsuarios;

import javax.swing.JOptionPane;


public class ServletPrincipal extends HttpServlet {
    
    //Estabñecindo conexion con la BD
    private final String usuario = "sa";
    private final String contrasenia = "root";
    private final String servidor = "localhost:1433";
    private final String bd = "Agroservicio";
    
    String url = "jdbc:sqlserver://"
            + servidor
            +";databaseName="+bd
            +";user="+usuario
            +";password="+contrasenia
            + ";encrypt=false;trustServerCertificate=false;";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    //FUNCIONES DE CRUD SOBRE LA BASE DE DATOS
    //Funciones de lectura de tablas (SELECT)
    
    ////////////////ACA VA LO DE EMPLEADOS///////////////////////////
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                try(Connection conn = DriverManager.getConnection(url)){
                    request.setAttribute("mensaje_conexion", "Ok!");
                    String sqlQuery = "select * from VistaEmpleado";
                    PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                    ResultSet rs = pstmt.executeQuery();
                    ArrayList<ViewModelEmpleados> listaEmpleados = new ArrayList<>();
                    while (rs.next()) {
                        ViewModelEmpleados empleado = new ViewModelEmpleados();
                        empleado.setID_Empleado(rs.getInt("ID_Empleado"));
                        empleado.setNombresEmpleado(rs.getString("nombresEmpleado"));
                        empleado.setApellidosEmpleado(rs.getString("apellidosEmpleado"));
                        empleado.setFechaNac(rs.getDate("FechaNac"));
                        empleado.setTelefono(rs.getString("Telefono"));
                        empleado.setCorreo(rs.getString("Correo"));
                        empleado.setDui(rs.getString("DUI"));
                        empleado.setIsss(rs.getInt("ISSS"));
                        empleado.setLinea1(rs.getString("Linea1"));
                        empleado.setLinea2(rs.getString("linea2"));
                        empleado.setNombreDistrito(rs.getString("NombreDistrito"));
                        empleado.setNombreMunicipio(rs.getString("NombreMunicipio"));
                        empleado.setNombreDepartamento(rs.getString("NombreDepartamento"));
                        empleado.setNombreTipoEmpleado(rs.getString("NombreTipoEmpleado"));

                        listaEmpleados.add(empleado);
                    }
                    request.setAttribute("listaEmpleados", listaEmpleados);

                }
            } catch (SQLException | ClassNotFoundException ex) {
                request.setAttribute("mensaje_conexion", ex.getMessage());
                ex.printStackTrace();
            }
        }
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Empleado = request.getParameter("ID_Empleado");
        String DUI_Empleado = request.getParameter("dui");
        String ISSS_Empleado = request.getParameter("isss");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String fechaNacEmpleado = request.getParameter("fechaNac");
        String telefonoEmpleado = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String ID_Cargo = request.getParameter("ID_Cargo");
        String ID_Direccion = request.getParameter("ID_Direccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update Empleados set "
                 + "DUI='"+DUI_Empleado+"', "
                 + "ISSS='"+ISSS_Empleado+"', "
                 + "NombresEmpleado='"+nombresEmpleado+"', "
                 + "ApellidosEmpleado='"+apellidosEmpleado+"', "
                 + "FechaNac='"+fechaNacEmpleado+"', "
                 + "Telefono='"+telefonoEmpleado+"', "
                 + "Correo='"+correo+"', " 
                 + "ID_TipoEmpleado='"+ID_Cargo+"', "
                 + "ID_Direccion='"+ID_Direccion+"' " 
                 + "where ID_Empleado='"+ID_Empleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String fechaNacEmpleado = request.getParameter("fechaNac");
        String telefonoEmpleado = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String DUI_Empleado = request.getParameter("dui");
        String ISSS_Empleado = request.getParameter("isss");
        String ID_Direccion = request.getParameter("ID_Direccion");
        String ID_Cargo = request.getParameter("ID_Cargo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Empleados values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombresEmpleado);
                pstmt.setString(2, apellidosEmpleado);
                pstmt.setString(3, fechaNacEmpleado);
                pstmt.setString(4, telefonoEmpleado);
                pstmt.setString(5, correo);
                pstmt.setString(6, DUI_Empleado);
                pstmt.setString(7, ISSS_Empleado);
                pstmt.setString(8, ID_Direccion);
                pstmt.setString(9, ID_Cargo);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        // Obtener el ID del empleado a eliminar desde la solicitud
        String idEmpleado = request.getParameter("id");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "DELETE FROM Empleados WHERE ID_Empleado = ?";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, idEmpleado);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    // Éxito al eliminar el empleado
                    request.getSession().setAttribute("exito", true);
                } else {
                    // No se encontró al empleado a eliminar
                    request.getSession().setAttribute("no exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    ///////////////////AQUI VA LO DE CLIENTES ////////////////
    public void agregarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombreCliente = request.getParameter("nombreCliente");
        String apellidoCliente = request.getParameter("apellidoCliente");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String dui = request.getParameter("dui");
        String tipoCliente = request.getParameter("tipoCliente");
        String fechaRegistro = request.getParameter("fechaRegistro");
        String ID_Direccion = request.getParameter("ID_Direccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Clientes values (?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreCliente);
                pstmt.setString(2, apellidoCliente);
                pstmt.setString(3, telefono);
                pstmt.setString(4, correo);
                pstmt.setString(5, dui);
                pstmt.setString(6, tipoCliente);
                pstmt.setString(7, fechaRegistro);
                pstmt.setString(8, ID_Direccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }     
    
    public void modificarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Cliente = request.getParameter("ID_Cliente");
        String nombreCliente = request.getParameter("nombreCliente");
        String apellidoCliente = request.getParameter("apellidoCliente");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String dui = request.getParameter("dui");
        String tipoCliente = request.getParameter("tipoCliente");
        String fechaRegistro = request.getParameter("fechaRegistro");
        String ID_Direccion = request.getParameter("ID_Direccion");

        String sql = "UPDATE Clientes SET "
    + "NombreCliente=?, "
    + "ApellidoCliente=?, "
    + "Telefono=?, "
                + "Correo=?, "
                + "DUI=?, "
                + "TipoCliente=?, "
                + "FechaRegistro=?, "
                + "ID_Direccion=? "
                + "WHERE ID_Cliente=?";

        try (Connection conn = DriverManager.getConnection(url)) {
            request.setAttribute("mensaje_conexion", "Ok!");

            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, nombreCliente);
                pstmt.setString(2, apellidoCliente);
                pstmt.setString(3, telefono);
                pstmt.setString(4, correo);
                pstmt.setString(5, dui);
                pstmt.setString(6, tipoCliente);
                pstmt.setString(7, fechaRegistro);
                pstmt.setString(8, ID_Direccion);
                pstmt.setString(9, ID_Cliente);

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }

    }

    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) {
        // Obtener el ID del Cliente a eliminar desde la solicitud
        String ID_Cliente = request.getParameter("id");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "DELETE FROM Clientes WHERE ID_Cliente = ?";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, ID_Cliente);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    // Éxito al eliminar el cliente
                    request.getSession().setAttribute("exito", true);
                } else {
                    // No se encontró al cliente eliminar
                    request.getSession().setAttribute("no exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    public void mostrarClientes(HttpServletRequest request, HttpServletResponse response) {
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                try(Connection conn = DriverManager.getConnection(url)){
                    request.setAttribute("mensaje_conexion", "Ok!");
                    String sqlQuery = "select * from VistaClientes";
                    PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                    ResultSet rs = pstmt.executeQuery();
                    ArrayList<ViewModelCliente> listaCliente = new ArrayList<>();
                    while (rs.next()) {
                        ViewModelCliente cliente = new ViewModelCliente();
                        cliente.setID_Cliente(rs.getInt("ID_Cliente"));
                        cliente.setNombreCliente(rs.getString("NombreCliente"));
                        cliente.setApellidoCliente(rs.getString("ApellidoCliente"));
                        cliente.setTelefonoCliente(rs.getString("TelefonoCliente"));
                        cliente.setCorreo(rs.getString("Correo"));
                        cliente.setDui(rs.getString("DUI"));
                        cliente.setTipoCliente(rs.getString("TipoCliente"));
                        cliente.setFechaRegistro(rs.getDate("FechaRegistro"));
                        cliente.setNombreMunicipio(rs.getString("NombreMunicipio"));
                        cliente.setNombreDepartamento(rs.getString("NombreDepartamento"));


                        listaCliente.add(cliente);
                    }               
                    request.setAttribute("listaCliente", listaCliente);

                }
            } catch (SQLException | ClassNotFoundException ex) {
                request.setAttribute("mensaje_conexion", ex.getMessage());
                ex.printStackTrace();
            }
        }
    
    //////////  ACA VA LO DE DIRECCIONES ///////////
    public void mostrarDirecciones(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaDirecciones;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelDirecciones> listaDireccion = new ArrayList<>();

                while (rs.next()) {
                    ViewModelDirecciones direccion = new ViewModelDirecciones();
                    direccion.setID_Direccion(rs.getInt("ID_Direccion"));
                    direccion.setLinea1(rs.getString("linea1"));
                    direccion.setLinea2(rs.getString("linea2"));
                    direccion.setID_Distrito(rs.getString("ID_Distrito"));
                    direccion.setCodigoPostal(rs.getInt("codigoPostal"));
                    direccion.setNombreDistrito(rs.getString("NombreDistrito"));
                    direccion.setID_Municipio(rs.getString("ID_Municipio"));
                    direccion.setNombreMunicipio(rs.getString("NombreMunicipio"));
                    direccion.setID_Departamento(rs.getString("ID_Departamento"));
                    direccion.setNombreDepartamento(rs.getString("NombreDepartamento"));
                    direccion.setPais(rs.getString("Pais"));

                    listaDireccion.add(direccion);

                    System.out.println("ID_Direccion: " + direccion.getID_Direccion());
                    System.out.println("linea1: " + direccion.getLinea1());
                    // Añadir logs o impresiones para otros campos si es necesario
                }
                request.setAttribute("listaDireccion", listaDireccion);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    //////////  ACA VA LO DE FACTURA Y DETALLE FACTURA ///////////
    public void mostrarFacturas(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM VistaFacturas;";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelFacturas> listaFactura = new ArrayList<>();

                while (rs.next()) {
                    ViewModelFacturas factura = new ViewModelFacturas();
                    factura.setID_Factura(rs.getInt("ID_Factura"));
                    factura.setNumeroFactura(rs.getInt("NumeroFactura"));
                    factura.setComentario(rs.getString("Comentario"));
                    factura.setFormaDePago(rs.getString("FormaDePago"));
                    factura.setID_DetalleFactura(rs.getInt("ID_DetalleFactura"));
                    factura.setID_Cliente(rs.getInt("ID_Cliente"));
                    factura.setNombreCliente(rs.getString("NombreCliente"));
                    factura.setApellidoCliente(rs.getString("ApellidoCliente"));
                    factura.setTelefonoCliente(rs.getString("TelefonoCliente"));
                    factura.setTipoCliente(rs.getString("TipoCliente"));
                    factura.setID_Empleado(rs.getInt("ID_Empleado"));
                    factura.setNombresEmpleado(rs.getString("NombresEmpleado"));
                    factura.setApellidosEmpleado(rs.getString("ApellidosEmpleado"));
                    factura.setCantidadProducto(rs.getInt("CantidadProducto"));
                    factura.setPrecioUnitario(rs.getBigDecimal("PrecioUnitario"));
                    factura.setSubtotal(rs.getBigDecimal("Subtotal"));
                    factura.setIMPUESTO_IVA(rs.getBigDecimal("IMPUESTO_IVA"));
                    factura.setTotal(rs.getBigDecimal("Total"));

                    listaFactura.add(factura);
                }
                request.setAttribute("listaFactura", listaFactura);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    ///////////////// ACA VA PROVEEDORES
    public void mostrarProveedores(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from VistaProveedores";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelProveedores> listaProveedor = new ArrayList<>();
                while (rs.next()) {
                    ViewModelProveedores proveedor = new ViewModelProveedores();
                    proveedor.setID_Proveedor(rs.getInt("ID_Proveedor"));
                    proveedor.setNombreProveedor(rs.getString("NombreProveedor"));
                    proveedor.setTelefono(rs.getString("Telefono"));
                    proveedor.setCorreo(rs.getString("Correo"));
                    proveedor.setFechaRegistro(rs.getDate("FechaRegistro"));
                    proveedor.setID_Direccion(rs.getInt("ID_Direccion"));
                    proveedor.setDireccionCompleta(rs.getString("DireccionCompleta"));

                    listaProveedor.add(proveedor);
                }
                request.setAttribute("listaProveedor", listaProveedor);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void modificarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Proveedor = request.getParameter("ID_Proveedor");
        String nombreProveedor = request.getParameter("nombreProveedor");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String fechaRegistro = request.getParameter("fechaRegistro");
        String ID_Direccion = request.getParameter("ID_Direccion");

        String sql = "UPDATE Proveedores SET "
                + "NombreProveedor=?, "
                + "Telefono=?, "
                + "Correo=?, "
                + "FechaRegistro=?, "
                + "ID_Direccion=? "
                + "WHERE ID_Proveedor=?";

        try (Connection conn = DriverManager.getConnection(url)) {
            request.setAttribute("mensaje_conexion", "Ok!");

            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, nombreProveedor);
                pstmt.setString(2, telefono);
                pstmt.setString(3, correo);
                pstmt.setString(4, fechaRegistro);
                pstmt.setString(5, ID_Direccion);
                pstmt.setString(6, ID_Proveedor);

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los Proveedores es autoincrementable
        String nombreProveedor = request.getParameter("nombreProveedor");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String fechaRegistro = request.getParameter("fechaRegistro");
        String ID_Direccion = request.getParameter("ID_Direccion");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Proveedores values (?, ?, ?, ?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreProveedor);
                pstmt.setString(2, telefono);
                pstmt.setString(3, correo);
                pstmt.setString(4, fechaRegistro);
                pstmt.setString(5, ID_Direccion);

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarProveedor(HttpServletRequest request, HttpServletResponse response) {
        // Obtener el ID del Proveedor a eliminar desde la solicitud
        String ID_Proveedor = request.getParameter("ID_Proveedor");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "DELETE FROM Proveedores WHERE ID_Proveedor = ?";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, ID_Proveedor);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    // Éxito al eliminar el cliente
                    request.getSession().setAttribute("exito", true);
                } else {
                    // No se encontró al cliente eliminar
                    request.getSession().setAttribute("no exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //////////////////////////AQUI VA USUARIOS///////////////////////////
    public void mostrarUsuarios(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from VistaUsuarios";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelUsuarios> listaUsuarios = new ArrayList<>();
                while (rs.next()) {
                    ViewModelUsuarios usuarios = new ViewModelUsuarios();
                    usuarios.setID_Usuario(rs.getInt("ID_Usuario"));
                    usuarios.setUsuario(rs.getString("Usuario"));
                    usuarios.setClave(rs.getString("Clave"));
                    usuarios.setID_Empleado(rs.getInt("ID_Empleado"));
                    usuarios.setID_Rol(rs.getInt("ID_Rol"));
                    usuarios.setNombresEmpleado(rs.getString("NombresEmpleado"));
                    usuarios.setNombreTipoEmpleado(rs.getString("NombreTipoEmpleado")); 
                    usuarios.setOpciones(rs.getString("Opciones"));

                    listaUsuarios.add(usuarios);
                }
                request.setAttribute("listaUsuarios", listaUsuarios);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }

    public void modificarUsuario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Usuario = request.getParameter("ID_Usuario");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        String ID_Rol = request.getParameter("ID_Rol");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String nombreTipoEmpleado = request.getParameter("nombreTipoEmpleado");
        String opciones = request.getParameter("opciones");

        String sql = "UPDATE Usuarios SET "
                + "Usuario=?, "
                + "Clave=?, "
                + "ID_Rol=?, "
                + "NombresEmpleado=?, "
                + "NombreTipoEmpleado=?, "
                + "Opciones=? "
                + "WHERE ID_Usuario=?";

        try (Connection conn = DriverManager.getConnection(url)) {
            request.setAttribute("mensaje_conexion", "Ok!");

            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, usuario);
                pstmt.setString(2, clave);
                pstmt.setString(3, ID_Rol);
                pstmt.setString(4, nombresEmpleado);
                pstmt.setString(5, nombreTipoEmpleado);
                pstmt.setString(6, opciones);
                pstmt.setString(7, ID_Usuario);

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    public void agregarUsuario(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los Proveedores es autoincrementable
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        String ID_Empleado = request.getParameter("ID_Empleado");
        String ID_Rol = request.getParameter("ID_Rol");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String nombreTipoEmpleado = request.getParameter("nombreTipoEmpleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Proveedores values (?, ?, ?, ?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, usuario);
                pstmt.setString(2, clave);
                pstmt.setString(3, ID_Empleado);
                pstmt.setString(4, ID_Rol);
                pstmt.setString(5, nombresEmpleado);
                pstmt.setString(6, nombreTipoEmpleado);
                

                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) {
        // Obtener el ID del Proveedor a eliminar desde la solicitud
        String ID_Proveedor = request.getParameter("ID_Usuario");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "DELETE FROM Usuarios WHERE ID_Usuario = ?";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, ID_Proveedor);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    // Éxito al eliminar el cliente
                    request.getSession().setAttribute("exito", true);
                } else {
                    // No se encontró al cliente eliminar
                    request.getSession().setAttribute("no exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        if(accion==null){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
         }else if(accion.equals("Login")){
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }else if(accion.equals("RegistrarEmpleados")){
            request.getRequestDispatcher("/RegistrarEmpleados.html").forward(request, response);
        }else if(accion.equals("RegistrarCategorias")){
            request.getRequestDispatcher("/RegistrarCategorias.html").forward(request, response);
        }else if(accion.equals("RegistrarCompras")){
            request.getRequestDispatcher("/RegistrarCompras.html").forward(request, response);
        }else if(accion.equals("RegistrarVentas")){
            request.getRequestDispatcher("/RegistrarVentas.html").forward(request, response);
        }else if(accion.equals("RegistrarClientes")){
            request.getRequestDispatcher("/RegistrarClientes.html").forward(request, response);
        }else if(accion.equals("RegistrarProveedores")){
            request.getRequestDispatcher("/RegistrarProveedores.html").forward(request, response);
        } else if (accion.equals("GestionarEmpleados")) {
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("/GestionarEmpleados.jsp").forward(request, response);
        }else if (accion.equals("GestionarCliente")) {
            mostrarClientes(request, response);
            request.getRequestDispatcher("/GestionarCliente.jsp").forward(request, response);
        }else if (accion.equals("MostrarDirecciones")) {
            mostrarDirecciones(request, response);
            request.getRequestDispatcher("/MostrarDirecciones.jsp").forward(request, response);
        }
        else if (accion.equals("MostrarFacturas")) {
            mostrarFacturas(request, response);
            request.getRequestDispatcher("/MostrarFacturas.jsp").forward(request, response);
        }
        else if (accion.equals("GestionarProveedores")) {
            mostrarProveedores(request, response);
            request.getRequestDispatcher("/PanelGestion/GestionarProveedores.jsp").forward(request, response);
        }
        else if (accion.equals("GestionarUsuarios")) {
            mostrarUsuarios(request, response);
            request.getRequestDispatcher("/PanelGestion/GestionarUsuarios.jsp").forward(request, response);
        }
        
        //REDIRECCION PARA JSP DE AGREGAR
        else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarEmpleado.jsp").forward(request, response);
        }
        
        else if (accion.equals("AgregarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarCliente.jsp").forward(request, response);
            
        }else if (accion.equals("AgregarProveedor")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("Agregar/AgregarProveedor.jsp").forward(request, response);
        }else if (accion.equals("AgregarUsuario")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("Agregar/AgregarUsuario.jsp").forward(request, response);
        }
    }   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (accion.equals("Login")) {
            String usuario = request.getParameter("tfUsuario");
            String contrasenia = request.getParameter("tfContrasenia");

            try (PrintWriter print = response.getWriter()) {
                if (usuario.equals("admin") && contrasenia.equals("root")) {
                    
                    request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response);
                } else {
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login Sistema SuperMercado</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h2>Error: La contraseña o el usuario son erróneos</h2>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }   
       //CAPTURA DE DATOS ENVIADOS POR POST DE EMPLEADOS
        if (accion.equals("AgregarEmpleado")) {
            //LOS DATOS SE LE PASAN POR PARAMETRO A LA FUNCION
            agregarEmpleado(request, response);
            //REDIRIGE NUEVAMENTE A LA VISTA DE AGREGAR EMPLEADO
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("ModificarEmpleado")) {
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        } else if (accion.equals("EliminarEmpleado")) {
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarEmpleados");
        }
        //CAPTURA DE DATOS ENVIADOS POR POST DE CLIENTES
        if (accion.equals("AgregarCliente")) {
            //LOS DATOS SE LE PASAN POR PARAMETRO A LA FUNCION
            agregarCliente(request, response);
            //REDIRIGE NUEVAMENTE A LA VISTA DE AGREGAR EMPLEADO
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCliente");
        } else if (accion.equals("ModificarCliente")) {
            modificarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCliente");
        }else if (accion.equals("EliminarCliente")) {
            eliminarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarCliente");
        }else if (accion.equals("EliminarProveedor")) {
            eliminarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProveedores");
        }else if (accion.equals("ModificarProveedor")) {
            modificarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarProveedores");
        }else if (accion.equals("AgregarProveedor")) {
            agregarProveedor(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarProveedor");
        }else if (accion.equals("AgregarUsuario")) {
            agregarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarUsuario");
        }else if (accion.equals("EliminarUsuario")) {
            eliminarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarUsuario");
        }else if (accion.equals("ModificarUsuario")) {
            modificarUsuario(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionarUsuario");
        }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}