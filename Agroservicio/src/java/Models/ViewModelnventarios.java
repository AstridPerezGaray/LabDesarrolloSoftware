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
public class ViewModelnventarios {
    private int ID_Inventario;
    private Date fechaRegistro;
    private String tipoTransaccion;
    private int cantidad;
    private String ubicacion;
    private int ID_Producto;

    /**
     * @return the ID_Inventario
     */
    public int getID_Inventario() {
        return ID_Inventario;
    }

    /**
     * @param ID_Inventario the ID_Inventario to set
     */
    public void setID_Inventario(int ID_Inventario) {
        this.ID_Inventario = ID_Inventario;
    }

    /**
     * @return the fechaRegistro
     */
    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    /**
     * @param fechaRegistro the fechaRegistro to set
     */
    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    /**
     * @return the tipoTransaccion
     */
    public String getTipoTransaccion() {
        return tipoTransaccion;
    }

    /**
     * @param tipoTransaccion the tipoTransaccion to set
     */
    public void setTipoTransaccion(String tipoTransaccion) {
        this.tipoTransaccion = tipoTransaccion;
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
     * @return the ubicacion
     */
    public String getUbicacion() {
        return ubicacion;
    }

    /**
     * @param ubicacion the ubicacion to set
     */
    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
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
}
