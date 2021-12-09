package services;

import java.util.List;


import model.Usuario;
import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;

public class UsuarioService {
	
	public List<Usuario> list() {
		return DAOFactory.getUsuarioDAO().obtenerTodos();
	}
	
	public Usuario crear(String nombre, String preferencia, int monedas, double tiempo, String imagenPerfil, String hashContrasenia,Boolean activo,Boolean admin) {
		//int id, String nombre, String preferencia, int monedas, double tiempo, String imagenPerfil, String hashContrasenia,Boolean activo,Boolean admin

		Usuario usuario = new Usuario(-1,nombre,preferencia, monedas, tiempo,imagenPerfil, hashContrasenia, activo, admin);

		if (usuario.esValido()) {
			UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
			usuarioDAO.insertar(usuario);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		return usuario;
	}

}
