<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal-body">
	<!-- Usuario(id, nombre, tipoPreferido, monedas, tiempo,imagenPerfil,hash,activo,esAdmin); -->
	<div class="mb-3">
		<label for="name" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="nombre" placeholder="nombre"
			required value="${usuario.nombre}">
	</div>
	<div class="mb-3">
		<label for="cost"
			class='col-form-label ${usuario.errores.get("tipoPreferido") != null ? "is-invalid" : "" }'>Tipo:</label>
		<input class="form-control" type="number" id="cost" name="cost"
			required value="${usuario.tipo}"></input>
		<div class="invalid-feedback">
			<c:out value='${usuario.errores.get("tipo")}'></c:out>
		</div>
	</div>
	<div class="mb-3">
		<label for="monedas"
			class='col-form-label ${usuario.errores.get("monedas") != null ? "is-invalid" : "" }'>Monedas:</label>
		<input class="form-control" type="number" id="monedas" name="monedas"
			required value="${usuario.monedas}"></input>
		<div class="invalid-feedback">
			<c:out value='${usuario.errores.get("monedas")}'></c:out>
		</div>
	</div>
	<div class="mb-3">
		<label for="tiempo"
			class='col-form-label ${usuario.errores.get("tiempoDisponible") != null ? "is-invalid" : "" }'>Tiempo:</label>
		<input class="form-control" type="number" id="tiempo" name="tiempo"
			required value="${usuario.tiempoDisponible}"></input>
		<div class="invalid-feedback">
			<c:out value='${usuario.errores.get("tiempoDisponible")}'></c:out>
		</div>
	</div>
</div>
<div>
	<button type="submit" class="btn btn-primary">Guardar</button>
	<a onclick="window.history.back();" class="btn btn-secondary"
		role="button">Cancelar</a>
</div>
