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
public class ViewModelCliente {
    private int ID_Cliente;
    private String nombreCliente;
    private String apellidoCliente;
    private String telefonoCliente;
    private String correo;
    private String dui;
    private String tipoCliente;
    private Date fechaRegistro;
    private int ID_Direccion;

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
     * @return the telefono
     */
    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefonoCliente(String telefono) {
        this.telefonoCliente = telefono;
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
     * @return the ID_Direccion
     */
    public int getID_Direccion() {
        return ID_Direccion;
    }

    /**
     * @param ID_Direccion the ID_Direccion to set
     */
    public void setID_Direccion(int ID_Direccion) {
        this.ID_Direccion = ID_Direccion;
    }
}