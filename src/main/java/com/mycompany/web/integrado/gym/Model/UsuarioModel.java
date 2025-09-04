package com.mycompany.web.integrado.gym.Model;

import java.time.LocalDate;

public class UsuarioModel {

    private int id_usuario;
    private String dni, nombre, apellido,email, telefono, direccion, rol, estado, usuario_login, password;
    private LocalDate fecha_Nacimiento, fecha_Contratacion;

    public UsuarioModel() {
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public String getDni() {
        return dni;
    }

    public String getApellido() {
        return apellido;
    }

    public String getNombre() {
        return nombre;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getRol() {
        return rol;
    }

    public String getPassword() {
        return password;
    }

    public String getUsuario_login() {
        return usuario_login;
    }

    public String getEstado() {
        return estado;
    }

    public LocalDate getFecha_Nacimiento() {
        return fecha_Nacimiento;
    }

    public LocalDate getFecha_Contratacion() {
        return fecha_Contratacion;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsuario_login(String usuario_login) {
        this.usuario_login = usuario_login;
    }

    public void setFecha_Nacimiento(LocalDate fecha_Nacimiento) {
        this.fecha_Nacimiento = fecha_Nacimiento;
    }

    public void setFecha_Contratacion(LocalDate fecha_Contratacion) {
        this.fecha_Contratacion = fecha_Contratacion;
    }
}
