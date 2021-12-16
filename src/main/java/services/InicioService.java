package services;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import api.Frases;
import api.InfoLOTR;
import api.Personajes;
import model.Atraccion;
import model.Promocion;
import persistence.commons.DAOFactory;

public class InicioService {
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

	public List<Promocion> getPromociones() {
		List<Promocion> promociones = DAOFactory.getPromocionDAO().obtenerTodos();
		Collections.sort(promociones);
		return promociones;
	}

	public List<Atraccion> getAtracciones() {
		List<Atraccion> atracciones = DAOFactory.getAtraccionDAO().obtenerTodos();
		Collections.sort(atracciones);
		return atracciones;
	}
	
	
	
	
}
