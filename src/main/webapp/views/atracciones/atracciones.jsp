<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="../../partials/head.jsp"></jsp:include>
</head>

<body data-spy="scroll" data-target=".fixed-top">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- NAV  -->
	<jsp:include page="../../partials/nav.jsp"></jsp:include>
	<br>
	<br>
	<br>

	<c:if test="${usuario.esAdmin()}">
				<div class="alert alert-danger text-center" role="alert">Página no
					accesible para usuarios administradores</div>
			</c:if>
			<c:if test="${!usuario.esAdmin()}">
	<!-- Comienzan las cards y sus botones -->
	<div class="container pt-5">
		<br>
		<h1 class="text-center">Atracciones</h1>
		<br>
		<div class="row">
			<c:if test="${atracciones.size() == 0}">
				<div class="alert alert-warning text-center" role="alert">No
					hay ninguna atracción disponible :(</div>
			</c:if>
			<c:forEach items="${atracciones}" var="atraccion">
					<div class="col-md-4  p-3">
						<div class="card shadow">
							<img src="assets/img/${atraccion.imagen}" class="card-img-top"
								alt="Imagen Producto" style="max-height: 170px;">
							<div class="card-body">
								<h5 class="card-title">
									<c:out value="${atraccion.nombre}"></c:out>
								</h5>
								<p class="card-text" style="max-height: 20 rem">
									<c:out value="${atraccion.descripcion}"></c:out>
								</p>
							</div>
							<div class="text-center m-3">
								<a href="/turismo/productos/atraccion?id=${atraccion.id}"
									class="boton" aria-current="page" role="button">Más info</a>
							</div>
						</div>
					</div>
			</c:forEach>
		</div>

	</div>
	</c:if>

	<div>
		<img src="assets/img/footer-bg-fellowship.svg" id="footerimg" />
	</div>
	<!-- Footer -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h4>Tierra Media es el único parque de atracciones temático de
						El Señor de los Anillos</h4>
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


	<jsp:include page="../../partials/footer.jsp"></jsp:include>

</body>
</html>