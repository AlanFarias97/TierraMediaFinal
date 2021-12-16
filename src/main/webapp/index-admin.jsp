<!DOCTYPE html>
<html lang="es">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="partials/noAdmin.jsp"></jsp:include>

<c:if test="${usuario.esAdmin()}">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
	crossorigin="anonymous">
<link href="assets/css/admin.css" rel="stylesheet">
<link href="assets/css/all.css" rel="stylesheet">

<script defer src="assets/js/scripts.js"></script>
<script defer src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script defer
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script defer
	src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script defer
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script defer
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>

</head>

<body>

	<!-- Navigation -->
   
    <nav class="navbar navbar-light bg-light p-3 px-5">
        <div class="d-flex col-12 col-md-3 col-lg-2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
            <a class="navbar-brand" href="#">
                <img src="assets/img/logo.png" alt="logo" height="50">
                Admin
            </a>


            <button class="navbar-toggler d-md-none collapsed mb-3" type="button" data-toggle="collapse"
                data-target="#sidebar" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <div class="col-12 col-md-5 col-lg-8 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-expanded="false">
                    Hola, <c:out value="${usuario.nombre}"></c:out>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="/turismo/salir">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

	<div class="container-fluid">
	
		<div class="row">

			<nav id="sidebar"
				class="px-3 col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-md-5">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"> <i class="fas fa-home"></i> <span
								class="ml-2">Inicio</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="/turismo/admin-usuarios.do"> <i class="fas fa-users"></i>
								<span class="ml-2">Usuarios</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-atracciones.do"> <i class="fas fa-mountain"></i>
								<span class="ml-2">Atracciones</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-promociones.do"> <i class="fas fa-route"></i>
								<span class="ml-2">Promociones</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-tipos.do"> <i class="fas fa-shapes"></i> <span
								class="ml-2">Tipos</span>
						</a></li>
					</ul>
				</div>
			</nav>

			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4 text-center">

				<br>
				<h1 class="h2">Dashboard</h1>
				<br> <br>
				<div class="row my-4 justify-content-center">
					<div class="col-12 col-md-6 col-lg-3 mb-4 mb-lg-0 py-2">
						<div class="card shadow">
							<h5 class="card-header">
								<i class="fas fa-users"></i> Usuarios
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar,
									modificar o eliminar usuarios.</p>
								<a class="btn btn-primary float-right"
									href="/turismo/admin-usuarios.do"> Ver <i
									class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
						<div class="card shadow">
							<h5 class="card-header">
								<i class="fas fa-route"></i> Promociones
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar,
									modificar o eliminar packs de atracciones.</p>
								<a class="btn btn-primary float-right"
									href="/turismo/admin-promociones.do"> Ver <i
									class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
						<div class="card shadow">
							<h5 class="card-header">
								<i class="fas fa-mountain"></i> Atracciones
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar,
									modificar o eliminar atracciones.</p>
								<a class="btn btn-primary float-right"
									href="/turismo/admin-atracciones.do"> Ver <i
									class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
						<div class="card shadow">
							<h5 class="card-header">
								<i class="fas fa-shapes"></i> Tipos
							</h5>
							<div class="card-body">
								<p class="card-text">Acceder para consultar, agregar,
									modificar o eliminar tipos de atracciones.</p>
								<a class="btn btn-primary float-right"
									href="/turismo/admin-tipos.do"> Ver <i
									class="fas fa-chevron-right"></i>
								</a>
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
</c:if>
</html>
