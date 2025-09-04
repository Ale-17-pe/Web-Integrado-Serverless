<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="AresFitness - Gimnasio con más de 5 años de experiencia transformando vidas mediante el fitness y disciplina">
        <title>AresFitness - Inicio</title>
        <link rel="stylesheet" href="Recursos/Css/index.css">
        <link rel="stylesheet" href="Recursos/Css/HyF.css">
        <link rel="icon" href="Imagenes/logo.png" type="image/png">
        <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    </head>
    <body>
        <header role="banner">
            <div class="logo-container">
                <a href="index.jsp" aria-label="Página de inicio de AresFitness">
                    <img src="Imagenes/logo.png" alt="Logo AresFitness - Volver al inicio" width="120" height="60">
                </a>
            </div>
            <nav role="navigation" aria-label="Menú principal">
                <ul>
                    <li><a href="mutar.jsp">PLANES</a></li>
                    <li><a href="ubicacion.jsp">UBICACIÓN</a></li>
                    <li><a href="EjerciciosServlet">EJERCICIOS</a></li>
                </ul>
            </nav>
            <button class="menu-toggle" aria-label="Abrir menú" aria-expanded="false">
                <span></span>
                <span></span>
                <span></span>
            </button>
        </header>

        <main role="main">
            <!-- Img-1 -->
            <section class="content-section" aria-labelledby="quienes-somos">
                <div class="Img-1">
                    <img src="Imagenes/Gym-1.png" alt="Vista frontal moderna de las instalaciones de AresFitness" width="600" height="400">
                    <div>
                        <h2 id="quienes-somos">¿QUIÉNES SOMOS?</h2>
                        <p>En <strong>AresFitness</strong>, somos más que un gimnasio: somos una comunidad apasionada por transformar vidas a través del fitness,
                            la disciplina y la superación personal. Con más de 5 años de experiencia, ofrecemos un enfoque integral para mejorar tu bienestar
                            físico y mental.</p>
                    </div>
                </div>
            </section>

            <!-- Img-2 -->
            <section class="content-section" aria-labelledby="experiencia">
                <div class="Img-2">
                    <div>
                        <h2 id="experiencia">¿CUÁNTOS AÑOS TENEMOS?</h2>
                        <p>Llevamos más de <strong>5 años</strong> en el rubro del fitness, acompañando a miles de personas en su camino hacia
                            una vida más saludable. Nuestra experiencia nos permite brindarte un servicio de calidad con resultados comprobados y un enfoque personalizado.</p>
                    </div>
                    <img src="Imagenes/Gym-2.png" alt="Clientes realizando entrenamiento guiado en AresFitness" width="600" height="400">
                </div>
            </section>

            <!-- Img-3 -->
            <section class="content-section" aria-labelledby="objetivos">
                <div class="Img-3">
                    <img src="Imagenes/Gym-3.1.PNG" alt="Sesión de entrenamiento grupal en AresFitness" width="600" height="400">
                    <div>
                        <h2 id="objetivos">¿NUESTROS OBJETIVOS?</h2>
                        <p>En <strong>AresFitness</strong>, buscamos ayudarte a alcanzar tu mejor versión. Nuestro objetivo es ofrecer planes de
                            entrenamiento accesibles y personalizados, promover un estilo de vida saludable y abrir nuevas sedes para impactar positivamente en
                            más comunidades.</p>
                    </div>
                </div>
            </section>

            <section class="video-section" aria-labelledby="video-presentacion">
                <h2 id="video-presentacion" class="visually-hidden">Video presentación de AresFitness</h2>
                <div class="video-container">
                    <iframe width="800" height="500" src="https://www.youtube.com/embed/riWch046AqI" title="Video presentación AresFitness" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </section>
        </main>

        <footer role="contentinfo">
            <div class="logo-footer">
                <a href="index.jsp">
                    <img src="Imagenes/logo.png" alt="Logo AresFitness" width="100" height="50"><br><br>
                </a>
            </div>

            <div class="footer_container">
                <!-- Redes sociales -->
                <div class="redes-sociales">
                    <strong>Redes Sociales:</strong><br><br>
                    <a href="#" target="_blank" aria-label="Síguenos en Facebook"><img src="Imagenes/FB.png" alt="Facebook" class="icono-red" width="24" height="24"></a>
                    <a href="https://www.instagram.com/aresfitness.peru/" target="_blank" aria-label="Síguenos en Instagram"><img src="Imagenes/Insta.png" alt="Instagram" class="icono-red" width="24" height="24"></a>
                    <a href="#" target="_blank" aria-label="Síguenos en TikTok"><img src="Imagenes/Tiktok.png" alt="Tiktok" class="icono-red" width="24" height="24"></a>
                    <a href="#" target="_blank" aria-label="Síguenos en X"><img src="Imagenes/X.png" alt="X" class="icono-red" width="24" height="24"></a>
                    <br><br>
                    <strong>CONTÁCTANOS:</strong><br><br>
                    <a href="https://wa.me/+51987654321" target="_blank" aria-label="Contáctanos por WhatsApp"><img src="Imagenes/WhatsApp.png" alt="WhatsApp" style="width: 20px; vertical-align: middle;"> +51 987 654 321</a><br><br>
                    <a href="mailto:info@aresfitness.com" aria-label="Envíanos un correo electrónico"><img src="Imagenes/Gmail.png" alt="Correo electrónico" style="width: 20px; vertical-align: middle;"> info@aresfitness.com</a>
                </div>

                <!-- Enlaces -->
                <div class="footer-section">
                    <a href="terminos.jsp">TÉRMINOS Y CONDICIONES</a><br><br><br>
                    <a href="privacidad.jsp">POLÍTICAS Y PRIVACIDAD</a><br><br><br>
                    <a href="reclamos.jsp">QUEJAS Y RECLAMOS</a>
                </div>

                <!-- Soporte -->
                <div class="footer-section" style="text-align: center;">
                    <a href="soporte.jsp">SOPORTE TÉCNICO</a><br><br><br>
                    <a href="index.jsp">ARES FITNESS</a><br><br><br><br>
                    <img src="Imagenes/LibroR.png" alt="Libro de Reclamaciones - Descargar" style="width: 150px;">
                </div>
            </div>

            <p>&copy; 2025 AresFitness. Todos los derechos reservados.</p>
        </footer>
        <!-- JavaScript para el menú móvil -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const menuToggle = document.querySelector('.menu-toggle');
                const navMenu = document.querySelector('nav ul');

                if (menuToggle && navMenu) {
                    menuToggle.addEventListener('click', function() {
                        navMenu.classList.toggle('show');
                        const expanded = this.getAttribute('aria-expanded') === 'true';
                        this.setAttribute('aria-expanded', !expanded);
                    });
                }
            });
        </script>
    </body>
</html>