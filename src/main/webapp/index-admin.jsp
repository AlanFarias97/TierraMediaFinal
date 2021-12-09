<!DOCTYPE html>
<html lang="es">


<head>
<jsp:include page="partials/head-admin.jsp"></jsp:include>
</head>

<body>
	<nav>
		<jsp:include page="partials/nav-admin.jsp"></jsp:include>
	</nav>

	<div class="container-fluid">
		<div class="row">

			<nav id="sidebar"
				class="px-3 col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-md-5">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="admin.html"> <i class="fas fa-home"></i>
								<span class="ml-2">Inicio</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="/turismo/admin-usuarios"> <i class="fas fa-users"></i> <span
								class="ml-2">Usuarios</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-atracciones"> <i class="fas fa-mountain"></i>
								<span class="ml-2">Atracciones</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-promociones"> <i class="fas fa-route"></i> <span
								class="ml-2">Promociones</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-tipos"> <i class="fas fa-shapes"></i> <span
								class="ml-2">Tipos</span>
						</a></li>
					</ul>
				</div>
			</nav>

			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4 text-center">
			<br>
				<h1 class="h2">Dashboard</h1>
				<br><br>
				<div class="row my-4 justify-content-center">
					<div class="col-12 col-md-6 col-lg-3 mb-4 mb-lg-0 py-2">
						<div class="card">
							<h5 class="card-header">
								<i class="fas fa-users"></i> Usuarios
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar, modificar o eliminar usuarios.</p>
								<a class="btn btn-primary float-right"
									href="/turismo/admin-usuarios">
									Ver <i class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
						<div class="card">
							<h5 class="card-header">
								<i class="fas fa-route"></i> Promociones
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar, modificar o eliminar packs de atracciones.</p>
								<a class="btn btn-primary float-right" href="/turismo/admin-promociones">
									Ver <i class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
						<div class="card">
							<h5 class="card-header">
								<i class="fas fa-mountain"></i> Atracciones
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar, modificar o eliminar atracciones.</p>
								<a class="btn btn-primary float-right" href="/turismo/admin-atracciones">
									Ver <i class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
						<div class="card">
							<h5 class="card-header">
								 <i class="fas fa-shapes"></i> Tipos
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar, modificar o eliminar tipos de atracciones.</p>
								<a class="btn btn-primary float-right" href="/turismo/admin-tipos">
									Ver <i class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
		</div>
		</main>
	</div>
	</div>

	<footer class="float-right px-5 py-5">
		<span>Copyright © 2021 <a href="#">FreakisTeam</a></span>
	</footer>

</body>

</html>