<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - AresFitness</title>
    <link rel="stylesheet" href="Css/regis.css">
    <link rel="stylesheet" href="Css/HyF.css">
    <link rel="icon" href="Imagenes/logo.png" type="image/png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        #toast-container {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 9999;
        }

        .toast {
            background-color: #ff4d4d;
            color: white;
            padding: 14px 20px;
            margin-bottom: 10px;
            border-radius: 6px;a
        box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            font-size: 14px;
            animation: fadein 0.5s, fadeout 0.5s 3s;
            position: relative;
            min-width: 250px;
        }

        .toast.success {
            background-color: #28a745;
        }

        .toast.warning {
            background-color: #ffc107;
            color: #000;
        }

        @keyframes fadein {
            from {
                opacity: 0;
                right: 0px;
            }
            to {
                opacity: 1;
                right: 20px;
            }
        }

        @keyframes fadeout {
            from {
                opacity: 1;
                right: 20px;
            }
            to {
                opacity: 0;
                right: 0px;
            }
        }
    </style>


</head>
<body>
<header>
    <div class="logo-container">
        <a href="index.jsp"><img src="Imagenes/logo.png" alt="Logo AresFitness"></a>
    </div>
</header>

<main>
    <section class="formulario">
        <div class="form-container">
            <div class="form-header">
                <h2>CREA TU CUENTA</h2>
                <p>Únete a la familia AresFitness y comienza tu transformación</p>
            </div>

            <% String error = request.getParameter("error"); %>
            <% if ("dni_duplicado".equals(error)) { %>
            <div class="alert alert-danger">El DNI ingresado ya está registrado.</div>
            <% } else if ("contrasenas_no_coinciden".equals(error)) { %>
            <div class="alert alert-danger">Las contraseñas no coinciden.</div>
            <% } else if ("validacion".equals(error)) { %>
            <div class="alert alert-danger">Hay datos inválidos en el formulario.</div>
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
                            <div id="dniFeedback" class="invalid-feedback" style="display: none; color: yellow; font-size: 0.9em;">
                                Este DNI ya está registrado.
                            </div>
                        </div>
                        <div class="input-field">
                            <input type="tel" id="telefono" name="telefono" placeholder="Teléfono" required
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
                            <option value="" disabled selected>Seleccione una opción</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                            <option value="Otro">Otro</option>
                        </select>
                        <i class="fas fa-venus-mars"></i>
                    </div>

                    <div class="input-field">
                        <input type="email" id="correo" name="correo" placeholder="Correo electrónico" required>
                        <i class="fas fa-envelope"></i>
                    </div>

                    <div class="input-field">
                        <input type="text" id="direccion" name="direccion" placeholder="Dirección" required>
                        <i class="fas fa-map-marker-alt"></i>
                    </div>

                    <div class="input-row">
                        <div class="input-field">
                            <input type="password" id="contrasena" name="contrasena" placeholder="Contraseña" required
                                   pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$"
                                   title="Debe tener entre 8 y 20 caracteres, incluir mayúsculas, minúsculas, al menos un número y un símbolo (@$!%*?&).">

                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="input-field">
                            <input type="password" id="confirmarContrasena" name="confirmarContrasena" placeholder="Confirmar Contraseña" required>
                            <i class="fas fa-lock"></i>
                        </div>
                    </div>

                    <input type="hidden" id="planSeleccionado" name="planSeleccionado">
                    <input type="hidden" id="coachIncluido" name="coachIncluido">
                </div>

                <button type="submit" class="register-btn" id="btnRegistrar">
                    REGISTRARME <i class="fas fa-arrow-right"></i>
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
    document.getElementById("registroForm").addEventListener("submit", function (e) {
        const dni = document.getElementById("dni").value;
        const telefono = document.getElementById("telefono").value;
        const fecha = document.getElementById("fechaNacimiento").value;
        const contrasena = document.getElementById("contrasena").value;
        const confirmar = document.getElementById("confirmarContrasena").value;
        const direccion = document.getElementById("direccion").value;

        let errores = [];

        if (!/^\d{8}$/.test(dni))
            errores.push("El DNI debe tener 8 dígitos.");
        if (!/^\d{9}$/.test(telefono))
            errores.push("El teléfono debe tener 9 dígitos.");

        const fechaNacimiento = new Date(fecha);
        const hoy = new Date();
        const edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
        const cumpleEsteAnio = (hoy.getMonth() < fechaNacimiento.getMonth() || (hoy.getMonth() === fechaNacimiento.getMonth() && hoy.getDate() < fechaNacimiento.getDate()));
        const edadFinal = edad - (cumpleEsteAnio ? 1 : 0);
        if (edadFinal < 18)
            errores.push("Debes tener al menos 18 años.");

        if (direccion.length < 5)
            errores.push("La dirección debe tener al menos 5 caracteres.");
        if (contrasena.length < 8)
            errores.push("La contraseña debe tener al menos 8 caracteres.");
        if (contrasena !== confirmar)
            errores.push("Las contraseñas no coinciden.");
        if (!/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,20}$/.test(contrasena)) {
            errores.push("La contraseña debe tener entre 8 y 20 caracteres, con mayúsculas, minúsculas, un número y un símbolo especial (@$!%*?&).");
        }

        if (errores.length > 0) {
            e.preventDefault();
            errores.forEach(msg => mostrarToast(msg));
        }
    });

    document.getElementById("dni").addEventListener("blur", function () {
        const dniInput = this;
        const dni = dniInput.value.trim();
        const feedback = document.getElementById("dniFeedback");
        const boton = document.getElementById("btnRegistrar");

        if (dni.length === 8) {
            fetch("validar-dni?dni=" + dni)
                .then(res => res.json())
                .then(data => {
                    if (data.existe) {
                        dniInput.classList.add("is-invalid");
                        feedback.style.display = "block";
                        boton.disabled = true;
                    } else {
                        dniInput.classList.remove("is-invalid");
                        feedback.style.display = "none";
                        boton.disabled = false;
                    }
                });
        } else {
            boton.disabled = true;
        }
    });
</script>
<script>
    function mostrarToast(mensaje, tipo = "error") {
        const contenedor = document.getElementById("toast-container");
        const toast = document.createElement("div");
        toast.className = "toast " + (tipo === "success" ? "success" : tipo === "warning" ? "warning" : "");
        toast.textContent = mensaje;

        contenedor.appendChild(toast);

        // Eliminar automáticamente después de 4s
        setTimeout(() => {
            toast.remove();
        }, 4000);
    }
</script>

</body>
</html>