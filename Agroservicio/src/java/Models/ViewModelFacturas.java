/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.math.BigDecimal;
<<<<<<< HEAD
import java.time.LocalDate;
=======
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37

/**
 *
 * @author Astrid
 */
public class ViewModelFacturas {
<<<<<<< HEAD

=======
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
    private int ID_Factura;
    private int numeroFactura;
    private String comentario;
    private String formaDePago;
    private int ID_DetalleFactura;
    private int ID_Cliente;
<<<<<<< HEAD
    private int ID_Empleado;
    private String nombreCliente;
    private String apellidoCliente;
    private String telefonoCliente;
    private String correo;
    private String dui;
    private String tipoCliente;
=======
    private String nombreCliente;
    private String apellidoCliente;
    private String telefonoCliente;
    private String tipoCliente;
    private int ID_Empleado;
    private String nombresEmpleado;
    private String apellidosEmpleado;
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
    private int cantidadProducto;
    private BigDecimal precioUnitario;
    private BigDecimal subtotal;
    private BigDecimal IMPUESTO_IVA;
    private BigDecimal total;
<<<<<<< HEAD
    private int ID_Producto;
    private String nombreProducto;
    private LocalDate fechaVencimiento;
    private String descripcion;
    private String nombreCategoriaProducto;
=======
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37

    /**
     * @return the ID_Factura
     */
    public int getID_Factura() {
        return ID_Factura;
    }

    /**
     * @param ID_Factura the ID_Factura to set
     */
    public void setID_Factura(int ID_Factura) {
        this.ID_Factura = ID_Factura;
    }

    /**
     * @return the numeroFactura
     */
    public int getNumeroFactura() {
        return numeroFactura;
    }

    /**
     * @param numeroFactura the numeroFactura to set
     */
    public void setNumeroFactura(int numeroFactura) {
        this.numeroFactura = numeroFactura;
    }

    /**
     * @return the comentario
     */
    public String getComentario() {
        return comentario;
    }

    /**
     * @param comentario the comentario to set
     */
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    /**
     * @return the formaDePago
     */
    public String getFormaDePago() {
        return formaDePago;
    }

    /**
     * @param formaDePago the formaDePago to set
     */
    public void setFormaDePago(String formaDePago) {
        this.formaDePago = formaDePago;
    }

    /**
     * @return the ID_DetalleFactura
     */
    public int getID_DetalleFactura() {
        return ID_DetalleFactura;
    }

    /**
     * @param ID_DetalleFactura the ID_DetalleFactura to set
     */
    public void setID_DetalleFactura(int ID_DetalleFactura) {
        this.ID_DetalleFactura = ID_DetalleFactura;
    }

    /**
     * @return the ID_Cliente
     */
    public int getID_Cliente() {
        return ID_Cliente;
    }

    /**
     * @param ID_Cliente the ID_Cliente to set
     */
    public void setID_Cliente(int ID_Cliente) {
        this.ID_Cliente = ID_Cliente;
    }

    /**
     * @return the nombreCliente
     */
    public String getNombreCliente() {
        return nombreCliente;
    }

    /**
     * @param nombreCliente the nombreCliente to set
     */
    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    /**
     * @return the apellidoCliente
     */
    public String getApellidoCliente() {
        return apellidoCliente;
    }

    /**
     * @param apellidoCliente the apellidoCliente to set
     */
    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    /**
     * @return the telefonoCliente
     */
    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    /**
     * @param telefonoCliente the telefonoCliente to set
     */
    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    /**
<<<<<<< HEAD
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the dui
     */
    public String getDui() {
        return dui;
    }

    /**
     * @param dui the dui to set
     */
    public void setDui(String dui) {
        this.dui = dui;
    }

    /**
=======
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
     * @return the tipoCliente
     */
    public String getTipoCliente() {
        return tipoCliente;
    }

    /**
     * @param tipoCliente the tipoCliente to set
     */
    public void setTipoCliente(String tipoCliente) {
        this.tipoCliente = tipoCliente;
    }

    /**
<<<<<<< HEAD
=======
     * @return the ID_Empleado
     */
    public int getID_Empleado() {
        return ID_Empleado;
    }

    /**
     * @param ID_Empleado the ID_Empleado to set
     */
    public void setID_Empleado(int ID_Empleado) {
        this.ID_Empleado = ID_Empleado;
    }

    /**
     * @return the nombresEmpleado
     */
    public String getNombresEmpleado() {
        return nombresEmpleado;
    }

    /**
     * @param nombresEmpleado the nombresEmpleado to set
     */
    public void setNombresEmpleado(String nombresEmpleado) {
        this.nombresEmpleado = nombresEmpleado;
    }

    /**
     * @return the apellidosEmpleado
     */
    public String getApellidosEmpleado() {
        return apellidosEmpleado;
    }

    /**
     * @param apellidosEmpleado the apellidosEmpleado to set
     */
    public void setApellidosEmpleado(String apellidosEmpleado) {
        this.apellidosEmpleado = apellidosEmpleado;
    }

    /**
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
     * @return the cantidadProducto
     */
    public int getCantidadProducto() {
        return cantidadProducto;
    }

    /**
     * @param cantidadProducto the cantidadProducto to set
     */
    public void setCantidadProducto(int cantidadProducto) {
        this.cantidadProducto = cantidadProducto;
    }

    /**
     * @return the precioUnitario
     */
    public BigDecimal getPrecioUnitario() {
        return precioUnitario;
    }

    /**
     * @param precioUnitario the precioUnitario to set
     */
    public void setPrecioUnitario(BigDecimal precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    /**
     * @return the subtotal
     */
    public BigDecimal getSubtotal() {
        return subtotal;
    }

    /**
     * @param subtotal the subtotal to set
     */
    public void setSubtotal(BigDecimal subtotal) {
        this.subtotal = subtotal;
    }

    /**
     * @return the IMPUESTO_IVA
     */
    public BigDecimal getIMPUESTO_IVA() {
        return IMPUESTO_IVA;
    }

    /**
     * @param IMPUESTO_IVA the IMPUESTO_IVA to set
     */
    public void setIMPUESTO_IVA(BigDecimal IMPUESTO_IVA) {
        this.IMPUESTO_IVA = IMPUESTO_IVA;
    }

    /**
     * @return the total
     */
    public BigDecimal getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(BigDecimal total) {
        this.total = total;
    }
<<<<<<< HEAD

    /**
     * @return the ID_Producto
     */
    public int getID_Producto() {
        return ID_Producto;
    }

    /**
     * @param ID_Producto the ID_Producto to set
     */
    public void setID_Producto(int ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    /**
     * @return the nombreProducto
     */
    public String getNombreProducto() {
        return nombreProducto;
    }

    /**
     * @param nombreProducto the nombreProducto to set
     */
    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    /**
     * @return the fechaVencimiento
     */
    public LocalDate getFechaVencimiento() {
        return fechaVencimiento;
    }

    /**
     * @param fechaVencimiento the fechaVencimiento to set
     */
    public void setFechaVencimiento(LocalDate fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the nombreCategoriaProducto
     */
    public String getNombreCategoriaProducto() {
        return nombreCategoriaProducto;
    }

    /**
     * @param nombreCategoriaProducto the nombreCategoriaProducto to set
     */
    public void setNombreCategoriaProducto(String nombreCategoriaProducto) {
        this.nombreCategoriaProducto = nombreCategoriaProducto;
    }

    /**
     * @return the ID_Empleado
     */
    public int getID_Empleado() {
        return ID_Empleado;
    }

    /**
     * @param ID_Empleado the ID_Empleado to set
     */
    public void setID_Empleado(int ID_Empleado) {
        this.ID_Empleado = ID_Empleado;
    }

=======
>>>>>>> 98f15828566f2ed0730dfb948d1e166751f91e37
    
}
