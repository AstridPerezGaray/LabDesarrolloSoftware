/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author ccerr
 */
public class ViewModelProveedores {
    private int ID_Proveedor;
    private String nombreProveedor;
    private String telefono;
    private String correo;
    private Date fechaRegistro;
    private String linea1;
    private String linea2;
    private String nombreDistrito;
    private String nombreMunicipio;

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

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
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
     * @return the linea1
     */
    public String getLinea1() {
        return linea1;
    }

    /**
     * @param linea1 the linea1 to set
     */
    public void setLinea1(String linea1) {
        this.linea1 = linea1;
    }

    /**
     * @return the linea2
     */
    public String getLinea2() {
        return linea2;
    }

    /**
     * @param linea2 the linea2 to set
     */
    public void setLinea2(String linea2) {
        this.linea2 = linea2;
    }

    /**
     * @return the nombreDistrito
     */
    public String getNombreDistrito() {
        return nombreDistrito;
    }

    /**
     * @param nombreDistrito the nombreDistrito to set
     */
    public void setNombreDistrito(String nombreDistrito) {
        this.nombreDistrito = nombreDistrito;
    }

    /**
     * @return the nombreMunicipio
     */
    public String getNombreMunicipio() {
        return nombreMunicipio;
    }

    /**
     * @param nombreMunicipio the nombreMunicipio to set
     */
    public void setNombreMunicipio(String nombreMunicipio) {
        this.nombreMunicipio = nombreMunicipio;
    }
}
