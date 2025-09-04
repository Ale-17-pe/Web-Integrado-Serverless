<%--
    Document   : login
    Created on : 22 jun. 2025, 20:53:19
    Author     : ASPIRE 5 CI7 10MA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.apiweb.aresfitnes.Model.Plan" %>
<%
    Plan plan = (Plan) session.getAttribute("PlanSeleccionado");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio - AresFitness</title>
        <link rel="stylesheet" href="Css/login.css">
        <link rel="icon" href="Imagenes/logo.png" type="image/png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>
    <body class="bg-light">
        <!-- Encabezado -->
        <header>
            <div class="logo-container">
                <a href="index.jsp">
                    <img src="Imagenes/logo.png" alt="Logo AresFitness">
                </a>
            </div>
        </header>

        <!-- Formulario -->
        <div class="main-wrapper">
            <div class="container">
                <div class="form-content">
                    <div class="user-icon">
                        <img src="Imagenes/usuario.png" alt="Icono de usuario" />
                    </div>
                    <h1 id="title">INICIAR SESIÓN</h1>
                    <p class="subtitle">Ingresa tus credenciales para acceder a tu cuenta</p>

                    <form id="loginForm" action="LoginServlet" method="post">
                        <div class="input-group">
                            <div class="input-field" id="nameInput">
                                <i class="fa-solid fa-envelope"></i>
                                <input type="number "name="dni" id="dni" placeholder="dni" maxlength="8" pattern="\d{8}" required />
                            </div>
                            <div class="input-field">
                                <i class="fa-solid fa-lock"></i>
                                <input type="password" name="contrasena" id="password" placeholder="Contraseña" minlength="8" required />
                                <i class="fa-regular fa-eye-slash toggle-password" id="togglePassword" style="cursor: pointer;"></i>
                            </div>
                            <div class="OLVIDE">
                                <a href="olvide.jsp">¿Olvidaste tu contraseña?</a>
                            </div>
                        </div>
                        <button type="submit" class="btn-login">Ingresar</button>
                    </form>
                    <%if(plan != null){%>
                    <div class="text-center mt-3">
                        <a href="registrar.jsp">¿ya seleccionaste un horario, pero no tienes cuenta? Matriculate</a>
                    </div>
                    <%}else{%>
                    <div class="text-center mt-3">
                        <a href="PlanServlet">¿No tienes cuenta? inscribite a un plan</a>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>

        <!-- Pie de pÃ¡gina bÃ¡sico -->
        <footer>
            <p style="text-align: center; color: #888;">&copy; 2025 AresFitness. Todos los derechos reservados.</p>
        </footer>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
