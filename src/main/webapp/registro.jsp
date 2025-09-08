<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro - AresFitness</title>
        <link rel="stylesheet" href="Recursos/Css/login.css">
        <link rel="stylesheet" href="Recursos/Css/registro.css">
        <link rel="icon" href="Recursos/Imagenes/logo.png" type="image/png">
        <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>
    <body>
        <header>
            <div class="logo-container">
                <a href="index.jsp"><img src="Recursos/Imagenes/logo.png" alt="Logo AresFitness"></a>
            </div>
        </header>

        <main>
            <section class="formulario">
                <div class="form-container">
                    <div class="form-header">
                        <h2>CREA TU CUENTA</h2>
                        <p>Unete a la familia AresFitness y comienza el cambio</p>
                    </div>

                    <% String error = request.getParameter("error"); %>
                    <% if ("dni_duplicado".equals(error)) { %>
                    <div class="alert alert-danger">
                        <i class="fas fa-exclamation-circle"></i> El DNI ingresado ya está registrado.
                    </div>
                    <% } else if ("contrasenas_no_coinciden".equals(error)) { %>
                    <div class="alert alert-danger">
                        <i class="fas fa-exclamation-circle"></i> Las contraseñas no coinciden.
                    </div>
                    <% } else if ("validacion".equals(error)) { %>
                    <div class="alert alert-danger">
                        <i class="fas fa-exclamation-circle"></i> Hay datos inválidos en el formulario.
                    </div>
                    <% } %>

                    <form id="registroForm" action="RegistroServlet" method="post">
                        <div class="input-group">
                            <div class="input-row">
                                <div class="input-field">
                                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" required
                                           pattern="[A-Za-zÁÉÍÓÚáéíóúÑñ ]+"
                                           oninput="this.value = this.value.replace(/[^A-Za-zÁÉÍÓÚáéíóúÑñ ]/g, '')">
                                    <i class="fas fa-user"></i>
                                </div>
                                <div class="input-field">
                                    <input type="text" id="apellido" name="apellido" placeholder="Apellidos" required
                                           pattern="[A-Za-zÁÉÍÓÚáéíóúÑñ ]+"
                                           oninput="this.value = this.value.replace(/[^A-Za-zÁÉÍÓÚáéíóúÑñ ]/g, '')">
                                    <i class="fas fa-user"></i>
                                </div>
                            </div>

                            <div class="input-row">
                                <div class="input-field">
                                    <input type="text" id="dni" name="dni" placeholder="DNI" maxlength="8" required
                                           pattern="\d{8}"
                                           oninput="this.value = this.value.replace(/\D/g, '').slice(0,8)">
                                    <i class="fas fa-id-card"></i>
                                    <div id="dniFeedback" class="invalid-feedback" style="display: none;">
                                        <i class="fas fa-exclamation-triangle"></i> Este DNI ya está registrado.
                                    </div>
                                </div>
                                <div class="input-field">
                                    <input type="tel" id="telefono" name="telefono" placeholder="Iphone Number" required
                                           pattern="\d{9}"
                                           oninput="this.value = this.value.replace(/\D/g, '').slice(0,9)">
                                    <i class="fas fa-phone"></i>
                                </div>
                            </div>

                            <div class="input-field">
                                <input type="date" id="fechaNacimiento" name="fechaNacimiento" required>
                                <i class="fas fa-calendar-alt"></i>
                            </div>

                            <div class="input-field select-field">
                                <select id="genero" name="genero" required>
                                    <option value="" disabled selected>Seleccione su sexo</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                    <option value="Otro">Otro</option>
                                </select>
                                <i class="fas fa-venus-mars"></i>
                            </div>

                            <div class="input-field">
                                <input type="email" id="correo" name="correo" placeholder="email" required>
                                <i class="fas fa-envelope"></i>
                            </div>

                            <div class="input-field">
                                <input type="text" id="direccion" name="direccion" placeholder="Direccion" required>
                                <i class="fas fa-map-marker-alt"></i>
                            </div>

                            <div class="password-requirements">
                                <h4>Requisitos de contraseña:</h4>
                                <ul>
                                    <li><i class="fas fa-check-circle"></i> 8-20 caracteres</li>
                                    <li><i class="fas fa-check-circle"></i> Mayuscula y minusculas</li>
                                    <li><i class="fas fa-check-circle"></i> Al menos un numero</li>
                                    <li><i class="fas fa-check-circle"></i> Caractes especiales (@$!%*?&)</li>
                                </ul>
                            </div>

                            <div class="input-row">
                                <div class="input-field">
                                    <input type="password" id="contrasena" name="contrasena" placeholder="password"
                                    <i class="fas fa-lock"></i>
                                    <div class="password-strength">
                                        <div class="strength-meter" id="passwordStrength"></div>
                                    </div>
                                </div>
                                <div class="input-field">
                                    <input type="password" id="confirmarContrasena" name="confirmarContrasena" placeholder="Confirm password" required>
                                    <i class="fas fa-lock"></i>
                                </div>
                            </div>

                            <input type="hidden" id="planSeleccionado" name="planSeleccionado">
                            <input type="hidden" id="coachIncluido" name="coachIncluido">
                        </div>

                        <button type="submit" class="register-btn" id="btnRegistrar">
                            <i class="fas fa-user-plus"></i> REGISTRARME
                        </button>
                    </form>
                </div>
            </section>
        </main>
        <div id="toast-container"></div>

        <footer>
            <p>&copy; 2025 AresFitness. Todos los derechos reservados.</p>
        </footer>

        <script>
    </body>
</html>