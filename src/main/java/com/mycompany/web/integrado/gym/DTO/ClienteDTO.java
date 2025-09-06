package com.mycompany.web.integrado.gym.DTO;

import java.util.Date;

public class ClienteDTO {
    private int id_cliente;
    private String nombre, apellido,correo,telefono, direccion, genero, dni;
    private Date fecha_Nacimiento;

    public ClienteDTO(int id_cliente, String nombre, String apellido, String correo, String telefono, String direccion, String genero, String dni, Date fecha_Nsciemto) {
        this.id_cliente = id_cliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.telefono = telefono;
        this.direccion = direccion;
        this.genero = genero;
        this.dni = dni;
        this.fecha_Nacimiento = fecha_Nsciemto;
    }

    public ClienteDTO() {
    }

    public int getId_cliente(int idCliente) {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getApellido(String apellido) {
        return this.apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNombre(String nombre) {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo(String correo) {
        return this.correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDni(String dni) {
        return this.dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Date getFecha_Nacimiento() {
        return fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(Date fecha_Nacimiento) {
        this.fecha_Nacimiento = fecha_Nacimiento;
    }
}
