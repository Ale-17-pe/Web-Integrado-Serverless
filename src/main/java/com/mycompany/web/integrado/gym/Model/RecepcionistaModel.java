package com.mycompany.web.integrado.gym.Model;

public class RecepcionistaModel {
    private int id_recepcionista, id_usuario;
    public String nombre, apellido, telefono;

    public int getId_recepcionista() {
        return id_recepcionista;
    }

    public void setId_recepcionista(int id_recpcionista) {
        this.id_recepcionista = id_recpcionista;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
}
