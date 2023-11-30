/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Astrid
 */
public class ViewModelUsuarios {
    private int ID_Usuario;
    private String usuario;
    private String clave;
    private int ID_Empleado;
    private int ID_Rol;
    private String nombresEmpleado;
    private String nombreTipoEmpleado;
    private String opciones;

    /**
     * @return the ID_Usuario
     */
    public int getID_Usuario() {
        return ID_Usuario;
    }

    /**
     * @param ID_Usuario the ID_Usuario to set
     */
    public void setID_Usuario(int ID_Usuario) {
        this.ID_Usuario = ID_Usuario;
    }

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the clave
     */
    public String getClave() {
        return clave;
    }

    /**
     * @param clave the clave to set
     */
    public void setClave(String clave) {
        this.clave = clave;
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

    /**
     * @return the ID_Rol
     */
    public int getID_Rol() {
        return ID_Rol;
    }

    /**
     * @param ID_Rol the ID_Rol to set
     */
    public void setID_Rol(int ID_Rol) {
        this.ID_Rol = ID_Rol;
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
     * @return the nombreTipoEmpleado
     */
    public String getNombreTipoEmpleado() {
        return nombreTipoEmpleado;
    }

    /**
     * @param nombreTipoEmpleado the nombreTipoEmpleado to set
     */
    public void setNombreTipoEmpleado(String nombreTipoEmpleado) {
        this.nombreTipoEmpleado = nombreTipoEmpleado;
    }

    /**
     * @return the opciones
     */
    public String getOpciones() {
        return opciones;
    }

    /**
     * @param opciones the opciones to set
     */
    public void setOpciones(String opciones) {
        this.opciones = opciones;
    }

    
}
