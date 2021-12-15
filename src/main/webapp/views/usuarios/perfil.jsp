<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="../../partials/head.jsp"></jsp:include>
</head>

<body data-spy="scroll" data-target=".fixed-top">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg fixed-top navbar-light">
		<div class="container">

			<!-- Text Logo - Use this if you don't have a graphic logo 
            <a class="navbar-brand logo-text page-scroll" href="index.html">Tierra Media</a>-->
			<!-- Image Logo-->
			<a class="navbar-brand logo-image" href="index.jsp"><img
				src="assets/img/logo.png" alt="logo"><span id="nombreLogo"
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
							<a class="dropdown-item page-scroll" href="article.html">Qui�nes
								Somos</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item page-scroll" href="terms.html">Qu�
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
									<a class="dropdown-item page-scroll active" href="#">Mi
										perfil</a> <a class="dropdown-item page-scroll"
										href="/turismo/salir">Salir</a>
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
	<br>
	<br>
	<br>


	<div class="container">
		<br>
		<br>
		<h1 class="text-center">Mi perfil</h1>
		<br>

		<div class="class container">
			<div class="class row pb-5">
				<div class="class col-sm-6 text-center">
					<img src="assets/img/${usuario.imagenPerfil}"
						style="max-height: 200px;">
				</div>
				<div class="class col-sm-6">
					<h4 class="pt-4">
						Nombre:
						<c:out value="${usuario.nombre}"></c:out>
					</h4>
					<h6>
						Tipo preferido:
						<c:out value="${usuario.tipo.nombre}"></c:out>
					</h6>
					<h6>
						Dinero:
						<c:out value="${usuario.monedas}"></c:out>
						monedas
					</h6>
					<h6>
						Tiempo:
						<c:out value="${usuario.tiempoDisponible}"></c:out>
						horas
					</h6>
				</div>
			</div>
			<c:choose>
				<c:when test="${usuario.sinCompras()}">
					<div class="alert alert-warning text-center" role="alert">
						Todav�a no realizaste ninguna compra.</div>
				</c:when>
				<c:otherwise>
					<h3>Mi itinerario</h3>

					<table class="table py-5">
						<thead>
							<tr>
								<th scope="col">Tipo</th>
								<th scope="col">Nombre</th>
								<th scope="col">Tiempo</th>
								<th scope="col">Precio</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${usuario.atraccionesCompradas}" var="producto">
								<tr>
									<th scope="row"><c:out value="${producto.tipo.nombre}"></c:out></th>
									<td><c:out value="${producto.nombre}"></c:out></td>
									<td><c:out value="${producto.tiempo}"></c:out></td>
									<td><c:out value="${producto.precio}"></c:out></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div>
		<img src="assets/img/footer-bg-fellowship.svg" id="footerimg" />
	</div>
	<!-- Footer -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h4>Tierra Media es el �nico parque de atracciones tem�tico de
						El Se�or de los Anillos</h4>
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
						Copyright � <a href="#your-link">FreakisTeam</a>
					</p>
				</div>
				<!-- end of col -->
			</div>
			<!-- enf of row -->
		</div>
		<!-- end of container -->
	</div>
	<!-- end of copyright -->
	<!-- end of copyright -->

	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<!-- jQuery for Bootstrap's JavaScript plugins -->

	<script src="js/jquery.easing.min.js"></script>
	<!-- jQuery Easing for smooth scrolling between anchors -->
	<script src="js/swiper.min.js"></script>
	<!-- Swiper for image and text sliders -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- Magnific Popup for lightboxes -->
	<script src="js/scripts.js"></script>
	<!-- Custom scripts -->
</body>
</html>