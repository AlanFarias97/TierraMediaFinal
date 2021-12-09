<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg fixed-top navbar-light">
	<div class="container">

		<!-- Text Logo - Use this if you don't have a graphic logo 
            <a class="navbar-brand logo-text page-scroll" href="index.html">Tierra Media</a>-->
		<!-- Image Logo-->
		<a class="navbar-brand logo-image" href="index.html"><img
			src="assets/img/logo.png" alt="logo"><span id="nombreLogo" style="font-family:'Berkshire Swash', cursive;text-decoration: none !important;">Tierra Media</span></a>
 
		<button class="navbar-toggler p-0 border-0" type="button"
			data-toggle="offcanvas">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="navbar-collapse offcanvas-collapse"
			id="navbarsExampleDefault">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link page-scroll"
					href="#header">Inicio <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link page-scroll"
					href="#carouselExampleCaptions">Productos</a></li>
				<li class="nav-item"><a class="nav-link page-scroll"
					href="#carouselExampleCaptions">Promociones</a></li>
				<li class="nav-item"><a class="nav-link page-scroll"
					href="#carouselAtracciones">Atracciones</a></li>
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
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span style="font-family:'Berkshire Swash'; font-size:20px;"><c:out value="${usuario.nombre}" /> </span><i class="fas fa-user-circle"></i></a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item page-scroll" href="/turismo/salir">Salir</a>
						</div>
						</li>
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
<!-- end of navbar -->
<!-- end of navigation -->