package services;

import java.io.IOException;

import api.Frases;
import api.InfoLOTR;
import api.Personaje;
import api.Personajes;
import model.Usuario;
import model.nullobjects.UsuarioNull;
import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;

public class IngresarService {

	public Usuario login(String nombreUsuario, String contrasenia) {
		UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
    	Usuario usuario = usuarioDAO.buscarPorNombre(nombreUsuario);
    	
//    	if (usuario.isNull() || !usuario.estaActivo()) {
//    		usuario = UsuarioNull.build();
//    		}
  
    	if (usuario.isNull() || !usuario.checkPassword(contrasenia)) {
    		usuario = UsuarioNull.build();
    		}
    	return usuario;
	}

	public String getFrase() throws IOException, InterruptedException {
		Frases info = InfoLOTR.getInfo();
		return info.getDocs().get(0).getDialog();
	}
	
	public String getAutor() throws IOException, InterruptedException {
		Frases info = InfoLOTR.getInfo();
		String autorId = info.getDocs().get(0).getCharacter();
		Personajes autor = InfoLOTR.getAutor(autorId);
		return autor.getDocs().get(0).getName();
	}
}
