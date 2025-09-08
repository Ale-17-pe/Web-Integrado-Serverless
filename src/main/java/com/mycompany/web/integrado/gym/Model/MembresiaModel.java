package com.mycompany.web.integrado.gym.Model;

import java.sql.Date;
import java.time.LocalDateTime;

public class MembresiaModel {

    private int id_menbresia,id_cliente,id_plan;
    private java.sql.Date fecha_inicio_plan,fecha_,precio_pagado;
    private String estado,metodo_pago;
    private int id_registro_usuario;
    private LocalDateTime fecha_creacion;

    public int getId_menbresia() {
        return id_menbresia;
    }

    public void setId_menbresia(int id_menbresia) {
        this.id_menbresia = id_menbresia;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_plan() {
        return id_plan;
    }

    public void setId_plan(int id_plan) {
        this.id_plan = id_plan;
    }

    public Date getFecha_inicio_plan() {
        return fecha_inicio_plan;
    }

    public void setFecha_inicio_plan(Date fecha_inicio_plan) {
        this.fecha_inicio_plan = fecha_inicio_plan;
    }

    public Date getFecha_() {
        return fecha_;
    }

    public void setFecha_(Date fecha_) {
        this.fecha_ = fecha_;
    }

    public Date getPrecio_pagado() {
        return precio_pagado;
    }

    public void setPrecio_pagado(Date precio_pagado) {
        this.precio_pagado = precio_pagado;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMetodo_pago() {
        return metodo_pago;
    }

    public void setMetodo_pago(String metodo_pago) {
        this.metodo_pago = metodo_pago;
    }

    public int getId_registro_usuario() {
        return id_registro_usuario;
    }

    public void setId_registro_usuario(int id_registro_usuario) {
        this.id_registro_usuario = id_registro_usuario;
    }

    public LocalDateTime getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(LocalDateTime fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }



}
