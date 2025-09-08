package com.mycompany.web.integrado.gym.Services;

import com.mycompany.web.integrado.gym.DTO.ClienteDTO;
import com.mycompany.web.integrado.gym.Dao.ClienteDao;
import com.mycompany.web.integrado.gym.Model.ClienteModel;
import com.mycompany.web.integrado.gym.Model.UsuarioModel;

import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;

public class ClienteService {
    private ClienteDao clienteDao;

    public ClienteService() {
        this.clienteDao = new ClienteDao();
    }

    public int insertar(ClienteModel clienteModel) throws SQLException {
        return clienteDao.insertar(clienteModel);
    }

    public ClienteModel obtenerPorId(int idcliente){
        return clienteDao.buscarPorIdUsuario(idcliente);
    }

    public List<ClienteDTO> listarTodos(){
        return clienteDao.listarTodos();
    }

    public ClienteModel obternerclienteidusuario(int idusuario){
        return clienteDao.buscarPorIdUsuario(idusuario);
    }

    public boolean validarCliente(ClienteModel clienteModel, UsuarioModel usuarioModel) {
        if (!validarDni(usuarioModel.getDni())) {
            System.out.println("DNI inválido.");
            return false;
        }

        if (!validarTelefono(clienteModel.getTelefono())) {
            System.out.println("Teléfono inválido.");
            return false;
        }

        if (!esMayorDeEdad(clienteModel.getFecha_nacimento())) {
            System.out.println("El cliente debe ser mayor de 18 años.");
            return false;
        }

        if (!validarDireccion(clienteModel.getDireccion())) {
            System.out.println("Dirección inválida.");
            return false;
        }

        if (!validarContrasena(usuarioModel.getPassword())) {
            System.out.println("Contraseña inválida.");
            return false;
        }

        return true;
    }

    /**
     * DNI debe tener exactamente 8 dígitos numéricos
     */
    public boolean validarDni(String dni) {
        if (dni == null) {
            return false;
        }
        return dni.matches("\\d{8}");
    }

    /**
     * Teléfono debe tener exactamente 9 dígitos numéricos
     */
    public boolean validarTelefono(String telefono) {
        if (telefono == null) {
            return false;
        }
        return telefono.matches("\\d{9}");
    }

    /**
     * La persona debe ser mayor o igual a 18 años
     */
    public boolean esMayorDeEdad(java.sql.Date fechaNacimiento) {
        if (fechaNacimiento == null) {
            return false;
        }

        LocalDate fechaNac = fechaNacimiento.toLocalDate(); // ✅ esto sí es válido
        LocalDate hoy = LocalDate.now();
        Period edad = Period.between(fechaNac, hoy);
        return edad.getYears() >= 18;
    }

    /**
     * La dirección debe tener al menos 5 caracteres y no estar vacía
     */
    public boolean validarDireccion(String direccion) {
        if (direccion == null) {
            return false;
        }
        return direccion.trim().length() >= 5;
    }

    /**
     * Contraseña debe tener al menos 8 caracteres
     */
    public boolean validarContrasena(String contrasena) {
        if (contrasena == null) {
            return false;
        }
        return contrasena.length() >= 8;
    }

    /**
     * Valida que dos contraseñas coincidan
     */
    public boolean contrasenasCoinciden(String contrasena, String confirmar) {
        if (contrasena == null || confirmar == null) {
            return false;
        }
        return contrasena.equals(confirmar);
    }
}
