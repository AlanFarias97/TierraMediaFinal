<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="partials/head.jsp"></jsp:include>
</head>

<body data-spy="scroll" data-target=".fixed-top">

<nav>
<jsp:include page="partials/nav.jsp"></jsp:include>
</nav>
   

    <!-- Hero Image-->
    <div class="hero-image" style="background-image: linear-gradient(rgba(128, 121, 196, 0.25), rgba(99, 131, 106, 0.25)), url(assets/img/hero.jpg);">
        <div class="hero-text">
            <h1 id="titulo">¡Bienvenidos a la Tierra Media!</h1>
            <h2 id="subtitulo">Parque de atracciones</h2>
        </div>
    </div>
    <!-- end of Hero img -->

    <!-- Frase -->
    <div class="basic-1 mt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-11">
                    <p>"La <span style="font-family: 'Berkshire Swash'">fantasía</span> es, como muchas otras cosas, un
                        derecho legítimo de todo ser humano, pues a través de ella se halla una completa libertad y
                        satisfacción"</p>
                    <p style="text-align: end; text-decoration: underline; font-family: 'Berkshire Swash';">J.R.R
                        Tolkien</p>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-1 -->
    <!-- end of Frase -->


    <!--Carousel Promo-->
    <div class="container text-center">
        <h1>
            "Promociones"
        </h1>
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/img/gandalf-minas-tirith.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Minas Tirith</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/img/reyes-gondor.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Reyes de Gondor</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/img/rivendel.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Rivendel</h1>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- end of Carousel -->

      <!-- BotÃ³n Ver MÃ¡s -->
      <div class="text-center pt-2 mt-3">
        <button type="button" class="boton">Ver Más</button>
    </div>
    <!-- end of BotÃ³n -->

    <!-- InformaciÃ³n -->
    <div class="basic-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="text-container">
                        <h2>Tierra Media es un parque temático basado en los libros de J.R.R. Tolkien</h2>
                        <p>Compuesto por mas de 10 atracciones meticulosamente creadas apartir de el universo Tolkien, ubicado en Nueva Zelanda, lugar donde se filmaron las afamadas peliculas .</p>
                        <p>Podrás disfrutar de aquellos lugares donde siempre quisiste estar mientras leías "El Hobbit" o "El Silmarillon". VÃ©n a conocer El Reino de Gondor, Mordor, Erebor, Rohan o su amado Abismo de Helm</p>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="image-container">
                        <img src="assets/img/map2.jpg" alt="alternative">
                    </div> <!-- end of image-container -->
                </div>
            </div>
        </div>
    </div>
    <!-- end of Info -->

    <!-- Carousel Atracciones -->
    <div class="container text-center">
        <h1>
            "Atracciones"
        </h1>
        <div id="carouselAtracciones" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/img/rohan.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="assets/img/ganldaf-vs-balrog.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="assets/img/reyes-gondor.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselAtracciones"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselAtracciones"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- end of Carousel Atracciones -->

    <!-- BotÃ³n Ver MÃ¡s -->
    <div class="text-center pt-2 mt-3 mb-5">
        <button type="button" class="boton">Ver Más</button>
    </div>
    <!-- end of BotÃ³n -->

    <!--Tipos de atracciones-->
    <div class="container marketing text-center" id="#tipos-atracciones">
        <h1>Tipos de Atracciones</h1>
        <div class="row">
          <div class="col-lg-4" >
            <img src="assets/img/bilbo1.png" class="img-fluid" width="275px"></img>
            <h2>Aventura</h2>
            <p>Some representative placeholder content for the three columns of text below the carousel. This is the first column.</p>
            <p><a class="boton" href="#">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img src="assets/img/gandalf1.png" class="img-fluid" width="275px"></img>
            <h2>Paisaje</h2>
            <p>Another exciting bit of representative placeholder content. This time, we've moved on to the second column.</p>
            <p><a class="boton" href="#">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img src="assets/img/Sam1.png" class="img-fluid" width="275px"></img>
            <h2>Degustación</h2>
            <p>And lastly this, the third column of representative placeholder content.</p>
            <p><a class="boton" href="#">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div>
    <!-- end of Tipos -->

        <!-- Testimonials -->
        <div class="slider-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                    <h2 class="h2-heading">¿Qué piensan los usuarios de Tierra Media Parque Temático?</h2>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="assets/img/testimonial-1.jpg" alt="alternative">
                                        <div class="card-body">

                                            <p class="testimonial-text">Estaba entre ir a conocer Paris o venir aquí. No me arrepiento de haber venido a Tierra Media, un sueño cumplido menos!</p>
                                            <p class="testimonial-author">Sole Grilletta - Australia</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="assets/img/testimonial-3.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Cuando leí ESDLA, Me enamoré de sus paisajes, imaginaba lo lindo e imponente que debía ser. Tierra Media es igual o más imponente que los libros</p>
                                            <p class="testimonial-author">Nontué Aro - Italia</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="assets/img/testimonial-2.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Minas Tirith fue genial! Mi atracción preferida de todas, aunque todas me gustaron mucho. Visitar Tierra Media fue la mejor decisión que tomé en mi vida</p>
                                            <p class="testimonial-author">Federico Grande - España</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="assets/img/testimonial-4.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Como buen fanático de ESDLA puedo afirmar que es el mejor lugar para visitar si sos fan de Tolkien y su mundo fantástico</p>
                                            <p class="testimonial-author">Nelson Alderete - Nueva Zelanda</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="assets/img/testimonial-5.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Searching for a great prototyping and layout design app was difficult but thankfully I found app suite quickly</p>
                                            <p class="testimonial-author">Alan Farias - Argentina</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="assets/img/testimonial-6.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Vine buscando cobre y encontré oro!. Entre las cosas que mas destaco son las buenas promos</p>
                                            <p class="testimonial-author">Federico Grasior - Sudáfrica</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                            </div> <!-- end of swiper-wrapper -->

                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->

                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of slider-1 -->
    <!-- end of testimonials -->

    <!-- Statistics -->
    <div class="counter">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Counter -->
                    <div id="counter">
                        <div class="cell">
                            <div class="counter-value number-count" data-count="542">1</div>
                            <p class="counter-info">Atracciones Vendidas</p>
                        </div>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="526">1</div>
                            <p class="counter-info">Usuarios Satisfechos</p>
                        </div>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="489">1</div>
                            <p class="counter-info">Buenas Reseñas</p>
                        </div>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="508">1</div>
                            <p class="counter-info">Días sin Accidentes</p>
                        </div>
                    </div>
                    <!-- end of counter -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of counter -->
    <!-- end of statistics -->

    <div>
        <img src="assets/img/footer-bg-fellowship.svg" id="footerimg" />
    </div>
    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h4>Tierra Media es el único parque de atracciones temático de El Señor de los Anillos en el mundo</h4>
                    <div class="social-container">
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-facebook-f fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-twitter fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-pinterest-p fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-youtube fa-stack-1x"></i>
                            </a>
                        </span>
                    </div> <!-- end of social-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <ul class="list-unstyled li-space-lg p-small">
                        <li><a href="article.html">Article Details</a></li>
                        <li><a href="terms.html">Terms & Conditions</a></li>
                        <li><a href="privacy.html">Privacy Policy</a></li>
                    </ul>
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    <p class="p-small statement" style="background-color: rgb(55, 68, 66);">Copyright © <a
                            href="#your-link">FreakisTeam</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright -->
    <!-- end of copyright -->

</body>

</html>