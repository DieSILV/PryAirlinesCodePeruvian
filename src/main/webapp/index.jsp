<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="co"%>

<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AirlinesCodePeruvian</title>
	<link  href="<co:url value="css/style.css"/>" rel="stylesheet" type="text/css" media="all"></link>

</head>
<body>
 <header class="header">
        <div class="barra contenedor">
            <div class="barra__logo">
                <p class="barra__nombre">AirlinesCodePeruvian</p>
            </div>

            <nav class="barra__navegacion">
                <a class="barra__link" href="index.jsp">Inicio</a>
                <a class="barra__link" href="<co:url value="/vuelos.pe"/>">Vuelos</a>
                <a class="barra__link" href="<co:url value="/lugares.pe"/>">Lugares</a>
                <a class="barra__link" href="<co:url value="/hoteles.pe"/>">Hoteles</a>
                <a class="barra__link" href="<co:url value="/contactos.pe"/>">Contactos</a>
            </nav>

            <nav class="barra__login">
                <a class="barra__link" href="#">Login</a>
            </nav>
        </div>

        <form class="formulario contenedor">
            <div class="formulario__campo">
                <label class="formulario__label" for="ubicacion">Ubicación</label>
                <input type="text" class="formulario__input" id="ubicacion" placeholder="¿A donde viajas">
            </div>

            <div class="formulario__campo">
                <label class="formulario__label" for="llegada">Llegada</label>
                <input type="date" class="formulario__input" id="llegada">
            </div>

            <div class="formulario__campo">
                <label class="formulario__label" for="salida">Salida</label>
                <input type="date" class="formulario__input" id="salida">
            </div>

            <div class="formulario__campo">
                <label class="formulario__label" for="huespedes">Pasajeros</label>
                <input type="number" class="formulario__input" id="huespedes" placeholder="¿Cuántos?">
            </div>

            <div class="formulario__campo">
                <input type="submit" class="formulario__submit" value="Buscar">
            </div>
        </form>

        <div class="header__busqueda contenedor">
            <p class="header__busqueda-label">¿No sabes a donde ir?</p>
            <a href="#" class="header__busqueda-boton">Búsqueda Flexible</a>
        </div>

    </header>

    <section class="destinos contenedor seccion">
        <h2 class="destinos__heading">Descubre alojamientos populares</h2>

        <ul class="destinos__grid">
            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_1.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">New York</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_2.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">Paris</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_3.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">San Francisco</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_4.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">Egipto</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_5.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">Londres</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_6.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">Italia</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_7.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">India</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>

            <li class="destino">
                <div class="destino__imagen">
                    <img src="img/icono_destino_8.png" alt="imagen destino">
                </div>

                <div class="destino__informacion">
                    <h3 class="destino__nombre">Grecia</h3>
                    <p class="destino__distancia">4 horas en avión</p>
                </div>
            </li>
        </ul>
    </section>

    <section class="lugares contenedor seccion">
        <h2 class="lugares__heading">Vive en cualquier lugar del mundo</h2>

        <div class="lugares__grid">
            <div class="lugar">
                <img class="lugar__imagen" src="img/vive_1.jpg" alt="imagen seccion vive">
                <p class="lugar__nombre">Escapadas al aire libre</p>
            </div>

            <div class="lugar">
                <img class="lugar__imagen" src="img/vive_2.jpg" alt="imagen seccion vive">
                <p class="lugar__nombre">Alojamientos únicos</p>
            </div>

            <div class="lugar">
                <img class="lugar__imagen" src="img/vive_3.jpg" alt="imagen seccion vive">
                <p class="lugar__nombre">Alojamientos enteros</p>
            </div>

            <div class="lugar">
                <img class="lugar__imagen" src="img/vive_4.jpg" alt="imagen seccion vive">
                <p class="lugar__nombre">Con tu mascota</p>
            </div>
        </div>

    </section>

    <section class="anfitrion contenedor seccion">
        <div class="anfitrion__contenido">
            <h2 class="anfitrion__heading">Anímate a ser usuario</h2>
            <p class="anfitrion__texto">Aprovechar los descuentos de viajes para nuestros usuarios.</p>
            <a href="#" class="anfitrion__enlace">Más Información</a>
        </div>
    </section>

    <main class="experiencias contenedor seccion">
        <h2 class="experiencias__heading">Descubre Experiencias</h2>
        <p class="experiencias__descripcion">Actividades únicas con expertos locales, en persona o en línea.</p>

        <div class="experiencias__listado">
            <div class="experiencia">
                <img class="experiencia__imagen" src="img/experiencia_1.jpg" alt="imagen experiencia">
                <p class="experiencia__titulo">Experiencias</p>
                <p class="experiencia__descripcion">Actividades Locales estés donde estés</p>
            </div>

            <div class="experiencia">
                <img class="experiencia__imagen" src="img/experiencia_2.jpg" alt="imagen experiencia">
                <p class="experiencia__titulo">Experiencias</p>
                <p class="experiencia__descripcion">Visíta una ciudad y vive en ella.</p>
            </div>

            <div class="experiencia">
                <img class="experiencia__imagen" src="img/experiencia_3.jpg" alt="imagen experiencia">
                <p class="experiencia__titulo">Experiencias en línea</p>
                <p class="experiencia__descripcion">Actividades interactivas en vivo</p>
            </div>
        </div>
    </main>

    <footer class="footer">
        <div class="footer__grid contenedor">
            <div class="footer__widget">
                <h3 class="footer__heading">Acerca de</h3>
                <nav class="footer__menu">
                    <a class="footer__enlace" href="#">Enlace 1</a>
                    <a class="footer__enlace" href="#">Enlace 2</a>
                    <a class="footer__enlace" href="#">Enlace 3</a>
                    <a class="footer__enlace" href="#">Enlace 4</a>
                </nav>
            </div>

            <div class="footer__widget">
                <h3 class="footer__heading">Comunidad</h3>
                <nav class="footer__menu">
                    <a class="footer__enlace" href="#">Enlace 1</a>
                    <a class="footer__enlace" href="#">Enlace 2</a>
                    <a class="footer__enlace" href="#">Enlace 3</a>
                    <a class="footer__enlace" href="#">Enlace 4</a>
                </nav>
            </div>

            <div class="footer__widget">
                <h3 class="footer__heading">Anfitrión</h3>
                <nav class="footer__menu">
                    <a class="footer__enlace" href="#">Enlace 1</a>
                    <a class="footer__enlace" href="#">Enlace 2</a>
                    <a class="footer__enlace" href="#">Enlace 3</a>
                    <a class="footer__enlace" href="#">Enlace 4</a>
                </nav>
            </div>

            <div class="footer__widget">
                <h3 class="footer__heading">Asistencia</h3>
                <nav class="footer__menu">
                    <a class="footer__enlace" href="#">Enlace 1</a>
                    <a class="footer__enlace" href="#">Enlace 2</a>
                    <a class="footer__enlace" href="#">Enlace 3</a>
                    <a class="footer__enlace" href="#">Enlace 4</a>
                </nav>
            </div>
        </div>

        <div class="footer__barra contenedor">
            <nav class="footer__barranav">
                <a class="footer__enlace footer__enlace--barra" href="#">Enlace Nuevo</a>
                <a class="footer__enlace footer__enlace--barra" href="#">Enlace Nuevo</a>
                <a class="footer__enlace footer__enlace--barra" href="#">Enlace Nuevo</a>
                <a class="footer__enlace footer__enlace--barra" href="#">Enlace Nuevo</a>
            </nav>
        </div>
    </footer>


</body>
</html>