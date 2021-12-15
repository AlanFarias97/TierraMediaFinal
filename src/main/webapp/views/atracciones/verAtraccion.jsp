<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Webpage Title -->
<title>Tierra Media Turismo</title>

<!-- Styles -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Berkshire+Swash&family=Open+Sans:wght@300&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap"
	rel="stylesheet">
<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/fontawesome-all.css" rel="stylesheet">
<link href="../assets/css/magnific-popup.css" rel="stylesheet">
<link href="../assets/css/styles.css" rel="stylesheet">
<link href="../assets/css/swiper.css" rel="stylesheet">


<!-- Scripts -->

<script defer src="../assets/js/jquery.min.js"></script>
<!-- jQuery for Bootstrap's JavaScript plugins -->
<script defer src="../assets/js/jquery.easing.min.js"></script>
<!-- jQuery Easing for smooth scrolling between anchors -->
<script defer src="../assets/js/swiper.min.js"></script>
<!-- Swiper for image and text sliders -->
<script defer src="../assets/js/jquery.magnific-popup.js"></script>
<!-- Magnific Popup for lightboxes -->
<script defer src="../assets/js/scripts.js"></script>
<!-- Custom scripts -->
<script defer src="../assets/js/bootstrap.bundle.min.js"></script>
<!-- Favicon  
    <link rel="icon" href="images/favicon.png">-->

</head>

<body data-spy="scroll" data-target=".fixed-top">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg fixed-top navbar-light">
		<div class="container">

			<a class="navbar-brand logo-image" href="index.html"><img
				src="../assets/img/logo.png" alt="logo"><span id="nombreLogo"
				style="font-family: 'Berkshire Swash', cursive; text-decoration: none !important;">Tierra
					Media</span></a>

			<button class="navbar-toggler p-0 border-0" type="button"
				data-toggle="offcanvas">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="navbar-collapse offcanvas-collapse"
				id="navbarsExampleDefault">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link page-scroll"
						href="#header">Inicio <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link page-scroll" href="/turismo/productos">Productos</a></li>
					<li class="nav-item"><a class="nav-link page-scroll"
						href="/turismo/promociones">Promociones</a></li>
					<li class="nav-item"><a class="nav-link page-scroll"
						href="/turismo/atracciones">Atracciones</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown01"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tierra
							Media</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item page-scroll" href="article.html">Quiénes
								Somos</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item page-scroll" href="terms.html">Qué
								Somos</a>
						</div></li>

					<li class="nav-item"><a class="nav-link page-scroll"
						href="#wiki">Wiki</a></li>
					<!--  si no esta logueado -->
					<c:choose>
						<c:when test="${usuario != null}">
							<!--  Si esta logueado -->
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown01"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"><span
									style="font-family: 'Berkshire Swash'; font-size: 20px;"><c:out
											value="${usuario.nombre}" /> </span><i class="fas fa-user-circle"></i></a>
								<div class="dropdown-menu" aria-labelledby="dropdown01">
								<a class="dropdown-item page-scroll" href="/turismo/perfil">Mi perfil</a>
									<a class="dropdown-item page-scroll" href="/turismo/salir">Salir</a>
								</div></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link page-scroll"
								href="login.jsp">Login</a></li>
							<span class="nav-item social-icons"> <a href="#your-link">
									<i class="fab fa-instagram"></i>
							</a> <a href="#your-link"> <i class="fab fa-facebook"></i>
							</a>
							</span>
						</c:otherwise>
					</c:choose>
				</ul>

			</div>
			<!-- end of navbar-collapse -->
		</div>
		<!-- end of container -->
	</nav>

	<div class="container py-5">
		<br>
		<br> <br>
		<h1>
			<c:out value="${atraccion.nombre}"></c:out>
		</h1>
		<br>
		<div class="card-group">
			<div class="card">
				<img src="../assets/img/${atraccion.imagen}" class="card-img-top"
					alt="...">
				<div class="card-body">
					<p class="card-text">
						<c:out value="${atraccion.descripcion}"></c:out>
					</p>
				</div>
			</div>
		</div>
		<!-- botÃ³n -->
		<div class="d-flex flex-row-reverse bd-highlight">
			<div class="p-2 bd-highlight">
				<div class="d-grid gap-2">
					<a type="button" class="btn btn-success btn-md" href="/turismo/atracciones">
						Ver todas las atracciones &nbsp; <i class="fas fa-arrow-right"></i>
					</a>
				</div>
			</div>
		</div>
		<br>
		<!-- fin del botÃ³n -->
	</div>
	<!-- Terminan las cards -->
	<br>

	<!-- Statistics -->
	<div class="counter">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<!-- Counter -->
					<div id="counter">
						<div class="cell">
							<h2 class="card-title">Tiempo total</h2>
							<div class="counter-value number-count"
								data-count="${atraccion.tiempo}"></div>
							<p class="counter-info">horas de duración</p>
						</div>
						<div class="cell">
							<h2 class="card-title">Precio total</h2>
							<div class="counter-value number-count"
								data-count="${atraccion.precio}"></div>
							<p class="counter-info">monedas</p>
						</div>
					</div>
					<!-- end of counter -->

				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of counter -->
	<!-- end of statistics -->
	<!-- botÃ³n de comprar -->
	<div class="d-grid gap-2 col-12 mx-auto d-flex justify-content-center">
		<a class="btn btn-success btn-lg"
			href="/turismo/atracciones/comprar?id=${atraccion.id}" type="button">Comprar
			atracción</a>
	</div>
	<!-- Fin de botÃ³n comprar -->
	<br>
	<br>
	<br>
	<br>

	<div>
		<img src="images/footer-bg-fellowship.svg" id="footerimg" />
	</div>
	<!-- Footer -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h4>Tierra Media es el único parque de atracciones temático
						de El Señor de los Anillos</h4>
					<div class="social-container">
						<span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-facebook-f fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-twitter fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-pinterest-p fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-instagram fa-stack-1x"></i>
						</a>
						</span> <span class="fa-stack"> <a href="#your-link"> <i
								class="fas fa-circle fa-stack-2x"></i> <i
								class="fab fa-youtube fa-stack-1x"></i>
						</a>
						</span>
					</div>
					<!-- end of social-container -->
				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of footer -->
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
				</div>
				<!-- end of col -->
				<div class="col-lg-6">
					<p class="p-small statement"
						style="background-color: rgb(55, 68, 66);">
						Copyright © <a href="#your-link">FreakisTeam</a>
					</p>
				</div>
				<!-- end of col -->
			</div>
			<!-- enf of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of copyright -->

</body>
</html>