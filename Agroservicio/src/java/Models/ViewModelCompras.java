/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author Astrid
 */
public class ViewModelCompras {
    private int ID_Compra;
	private int cantidad;
	private int precioUnidad;
	private double descuetoUnidad;
	private String comentarios;
	private int ID_Producto;
	private int ID_Pedido;
	private Date fechaPedido;
	private Date fechaRecibido;
	private String nombreProducto;
	private int ID_Proveedor;
	private String nombreProveedor;

    /**
     * @return the ID_Compra
     */
    public int getID_Compra() {
        return ID_Compra;
    }

    /**
     * @param ID_Compra the ID_Compra to set
     */
    public void setID_Compra(int ID_Compra) {
        this.ID_Compra = ID_Compra;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the precioUnidad
     */
    public int getPrecioUnidad() {
        return precioUnidad;
    }

    /**
     * @param precioUnidad the precioUnidad to set
     */
    public void setPrecioUnidad(int precioUnidad) {
        this.precioUnidad = precioUnidad;
    }

    /**
     * @return the descuetoUnidad
     */
    public double getDescuetoUnidad() {
        return descuetoUnidad;
    }

    /**
     * @param descuetoUnidad the descuetoUnidad to set
     */
    public void setDescuetoUnidad(double descuetoUnidad) {
        this.descuetoUnidad = descuetoUnidad;
    }

    /**
     * @return the comentarios
     */
    public String getComentarios() {
        return comentarios;
    }

    /**
     * @param comentarios the comentarios to set
     */
    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

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
     * @return the ID_Pedido
     */
    public int getID_Pedido() {
        return ID_Pedido;
    }

    /**
     * @param ID_Pedido the ID_Pedido to set
     */
    public void setID_Pedido(int ID_Pedido) {
        this.ID_Pedido = ID_Pedido;
    }

    /**
     * @return the fechaPedido
     */
    public Date getFechaPedido() {
        return fechaPedido;
    }

    /**
     * @param fechaPedido the fechaPedido to set
     */
    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    /**
     * @return the fechaRecibido
     */
    public Date getFechaRecibido() {
        return fechaRecibido;
    }

    /**
     * @param fechaRecibido the fechaRecibido to set
     */
    public void setFechaRecibido(Date fechaRecibido) {
        this.fechaRecibido = fechaRecibido;
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
     * @return the ID_Proveedor
     */
    public int getID_Proveedor() {
        return ID_Proveedor;
    }

    /**
     * @param ID_Proveedor the ID_Proveedor to set
     */
    public void setID_Proveedor(int ID_Proveedor) {
        this.ID_Proveedor = ID_Proveedor;
    }

    /**
     * @return the nombreProveedor
     */
    public String getNombreProveedor() {
        return nombreProveedor;
    }

    /**
     * @param nombreProveedor the nombreProveedor to set
     */
    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }
}
