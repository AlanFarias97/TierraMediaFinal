<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
	crossorigin="anonymous">
<link href="../assets/css/admin.css" rel="stylesheet">
<link href="../assets/css/all.css" rel="stylesheet">

<script defer src="../assets/js/admin.js"></script>
<script defer
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script defer
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
	integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
	crossorigin="anonymous"></script>
</head>

<body>
	<nav class="navbar navbar-light bg-light p-3 px-5">
		<div
			class="d-flex col-12 col-md-3 col-lg-2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
			<a class="navbar-brand" href="#"> <img
				src="../assets/img/logo.png" alt="logo" height="50"> Admin
			</a>


			<button class="navbar-toggler d-md-none collapsed mb-3" type="button"
				data-toggle="collapse" data-target="#sidebar"
				aria-controls="sidebar" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>

		<div
			class="col-12 col-md-5 col-lg-8 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown"
					aria-expanded="false">
					Hola,
					<c:out value="${usuario.nombre}"></c:out>
				</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<li><a class="dropdown-item" href="/turismo/salir">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="row">
			<nav id="sidebar"
				class="px-3 col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-md-5">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="/turismo/index-admin.jsp"> <i class="fas fa-home"></i>
								<span class="ml-2">Inicio</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="/turismo/admin-usuarios"> <i
								class="fas fa-users"></i> <span class="ml-2">Usuarios</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-atracciones"> <i class="fas fa-mountain"></i>
								<span class="ml-2">Atracciones</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/turismo/admin-promociones"> <i class="fas fa-route"></i>
								<span class="ml-2">Promociones</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="/turismo/admin-tipos"> <i class="fas fa-shapes"></i> <span
								class="ml-2">Tipos</span>
						</a></li>
					</ul>
				</div>
			</nav>

			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-5 py-4">

				<c:if test="${usuario != null && !usuario.esValido()}">
					<div class="alert alert-danger">
						<p>Se encontraron errores al crear el usuario.</p>
					</div>
				</c:if>

				<form action="/turismo/admin-tipos/crear" method="post" class="shadow">
					<div class="modal-body">
						<h1 class="text-center">Nuevo Tipo <i class="fas fa-shapes"></i>
						</h1>
						<div class="row">
							<div class="col-lg-6">
								<div class="mb-3">
									<label for="nombre" class="col-form-label">Nombre:</label>
									<input type="text" class="form-control" id="nombre" name="nombre" required>
								</div>
							</div>
							
							<div class="col-lg-6">
								<div class="mb-3">
									<label for="imagen"
										class='col-form-label ${usuario.errores.get("imagen") != null ? "is-invalid" : "" }'>Imagen
										de perfil:</label> <input class="form-control" type="file" id="imagen"
										name="imagen" required></input>
									<div class="invalid-feedback">
										<c:out value='${usuario.errores.get("imagen")}'></c:out>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="mb-3">
										<label for="descripcion" class='col-form-label'>Descripción:</label>
										<input class="form-control" type="text" id="descripcion"
											name="descripcion" required></input>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center py-3">
						<button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
						<a onclick="window.history.back();" class="btn btn-secondary"
							role="button"><i class="fas fa-times"></i> Cancelar</a>
					</div>
				</form>
			</main>
		</div>
	</div>

	<footer class="float-right px-5 py-5">
		<span>Copyright © 2021 <a href="#">FreakisTeam</a></span>
	</footer>
</body>
</html>