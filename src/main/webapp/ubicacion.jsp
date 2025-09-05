<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ubicación - AresFitness</title>
        <link rel="stylesheet" href="Recursos/Css/ubicacion.css">
        <link rel="icon" href="Recursos/Imagenes/logo.png" type="image/png">
        <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>
    <body>
        <header class="main-header">
            <div class="header-container">
                <div class="logo-container">
                    <a href="index.jsp">
                        <img src="Recursos/Imagenes/logo.png" alt="Logo AresFitness">

                    </a>
                </div>
                <nav class="main-nav">
                    <ul>
                        <li><a href="mutar.jsp"><i class="fas fa-dumbbell"></i> PLANES</a></li>
                        <li><a href="ubicacion.jsp" class="active"><i class="fas fa-map-marker-alt"></i> UBICACIÓN</a></li>
                        <li><a href="EjerciciosServlet"><i class="fas fa-running"></i> EJERCICIOS</a></li>
                        <li><a href="planes2.jsp"><i class="fas fa-crown"></i> MEMBRESÍAS</a></li>
                    </ul>
                </nav>
                <div class="header-actions">
                        <div class="user-menu">
                        <a href="login.jsp" class="btn-login">
                            <i class="fas fa-user"></i> INICIAR SESIÓN
                        </a>
                </div>
                <div class="mobile-menu-btn">
                    <i class="fas fa-bars"></i>
                </div>
            </div>
        </header>

        <!-- Sección de ubicación mejorada -->
        <main>
            <section class="hero-location" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('Recursos/Imagenes/extencion.jpg') no-repeat center center/cover;">
                <div class="hero-overlay">
                    <div class="hero-content">
                        <h1>ENCUÉNTRANOS FÁCILMENTE</h1>
                        <p>Ven y conoce nuestras modernas instalaciones en un lugar estratégico de la ciudad</p>
                    </div>
                </div>
            </section>

            <section class="location-section">
                <div class="section-title">
                    <h2>NUESTRA UBICACIÓN</h2>
                    <div class="title-line"></div>
                    <p>Estamos ubicados en un lugar estratégico para tu comodidad</p>
                </div>

                <div class="location-container">
                    <div class="map-container">
                        <div class="map-frame">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d975.6893812773908!2d-76.82245228381464!3d-11.991272776981225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105e988107f9313%3A0xf42c35c05adcef9f!2sARES%20FITNESS!5e0!3m2!1ses-419!2spe!4v1745024811727!5m2!1ses-419!2spe"
                                width="100%"
                                height="450"
                                style="border:0;"
                                allowfullscreen=""
                                loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                        </div>
                    </div>

                    <div class="location-info">
                        <div class="info-card">
                            <div class="info-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="info-content">
                                <h3>Dirección</h3>
                                <p>Av. Principal 123, Lima, Perú</p>
                            </div>
                        </div>

                        <div class="info-card">
                            <div class="info-icon">
                                <i class="fas fa-clock"></i>
                            </div>
                            <div class="info-content">
                                <h3>Horario de Atención</h3>
                                <p>Lunes a Viernes: 5:00 am - 11:00 pm</p>
                                <p>Sábados: 6:00 am - 10:00 pm</p>
                                <p>Domingos: 7:00 am - 9:00 pm</p>
                            </div>
                        </div>

                        <div class="info-card">
                            <div class="info-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="info-content">
                                <h3>Teléfono</h3>
                                <p>(01) 123-4567</p>
                            </div>
                        </div>

                        <div class="info-card">
                            <div class="info-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="info-content">
                                <h3>Email</h3>
                                <p>info@aresfitness.com</p>
                            </div>
                        </div>

                        <div class="action-buttons">
                            <a href="https://maps.google.com/?q=Av. Principal 123, Lima, Perú" target="_blank" class="btn-direction">
                                <i class="fas fa-directions"></i> CÓMO LLEGAR
                            </a>
                            <a href="https://api.whatsapp.com/send?phone=51987654321" target="_blank" class="btn-whatsapp">
                                <i class="fab fa-whatsapp"></i> ESCRIBENOS
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Sección de transporte -->
            <section class="transport-section">
                <div class="section-title">
                    <h2>MEDIOS DE TRANSPORTE</h2>
                    <div class="title-line"></div>
                    <p>Llega fácilmente a nuestras instalaciones</p>
                </div>

                <div class="transport-options">
                    <div class="transport-card">
                        <div class="transport-icon">
                            <i class="fas fa-bus"></i>
                        </div>
                        <h3>Transporte Público</h3>
                        <p>Líneas de buses 102, 204 y 305 con parada a media cuadra</p>
                    </div>

                    <div class="transport-card">
                        <div class="transport-icon">
                            <i class="fas fa-subway"></i>
                        </div>
                        <h3>Metro</h3>
                        <p>Estación Central a 3 cuadras de distancia</p>
                    </div>

                    <div class="transport-card">
                        <div class="transport-icon">
                            <i class="fas fa-parking"></i>
                        </div>
                        <h3>Estacionamiento</h3>
                        <p>Amplio estacionamiento gratuito para clientes</p>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer mejorado -->
        <footer class="main-footer">
            <div class="footer-container">
                <div class="footer-section">
                    <div class="logo-footer">
                        <a href="index.jsp">
                            <img src="Recursos/Imagenes/logo.png" alt="Logo AresFitness">
                        </a>
                    </div>
                    <p>Transformando vidas a través del fitness desde 2020</p>
                    <div class="footer-social">
                        <a href="#" target="_blank" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.instagram.com/aresfitness.peru/" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" target="_blank" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
                        <a href="#" target="_blank" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>

                <div class="footer-section">
                    <h3>Enlaces rápidos</h3>
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="mutar.jsp">Planes</a></li>
                        <li><a href="ubicacion.jsp">Ubicación</a></li>
                        <li><a href="EjerciciosServlet">Ejercicios</a></li>
                        <li><a href="planes2.jsp">Membresías</a></li>
                    </ul>
                </div>

                <div class="footer-section">
                    <h3>Contáctanos</h3>
                    <div class="contact-info">
                        <p><i class="fas fa-map-marker-alt"></i> Av. Principal 123, Lima, Perú</p>
                        <p><i class="fas fa-phone"></i> (01) 123-4567</p>
                        <p><i class="fas fa-envelope"></i> info@aresfitness.com</p>
                        <p><i class="fab fa-whatsapp"></i> +51 987 654 321</p>
                    </div>
                </div>

                <div class="footer-section">
                    <h3>Horario de atención</h3>
                    <p>Lunes a Viernes: 5:00 am - 11:00 pm</p>
                    <p>Sábados: 6:00 am - 10:00 pm</p>
                    <p>Domingos: 7:00 am - 9:00 pm</p>
                    <div class="reclamation">
                        <img src="Recursos/Imagenes/LibroR.png" alt="Libro de Reclamaciones">
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="footer-bottom-content">
                    <p>&copy; 2025 AresFitness. Todos los derechos reservados.</p>
                    <div class="legal-links">
                        <a href="#">Términos y Condiciones</a>
                        <a href="#">Políticas de Privacidad</a>
                        <a href="#">Quejas y Reclamaciones</a>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Script para funcionalidades -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                // Menú móvil
                const menuBtn = document.querySelector('.mobile-menu-btn');
                const nav = document.querySelector('.main-nav');
                const headerActions = document.querySelector('.header-actions');

                if (menuBtn) {
                    menuBtn.addEventListener('click', () => {
                        nav.classList.toggle('active');
                        if (headerActions) {
                            headerActions.classList.toggle('active');
                        }
                        menuBtn.querySelector('i').classList.toggle('fa-bars');
                        menuBtn.querySelector('i').classList.toggle('fa-times');
                    });
                }

                // Cerrar menú al hacer clic en un enlace
                const navLinks = document.querySelectorAll('.main-nav a');
                navLinks.forEach(link => {
                    link.addEventListener('click', () => {
                        nav.classList.remove('active');
                        if (headerActions) {
                            headerActions.classList.remove('active');
                        }
                        menuBtn.querySelector('i').classList.add('fa-bars');
                        menuBtn.querySelector('i').classList.remove('fa-times');
                    });
                });
            });
        </script>
    </body>
</html>