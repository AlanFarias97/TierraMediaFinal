package services;

import java.util.ArrayList;
import java.util.List;
import model.Atraccion;
import model.Attraction;
import model.Tipo;
import persistence.AtraccionDAO;
import persistence.AttractionDAO;
import persistence.commons.DAOFactory;

public class AtraccionService {

	public List<Atraccion> list() {
		return DAOFactory.getAtraccionDAO().obtenerTodos();
	}
	
	public List<Atraccion> listarActivos(){
		List<Atraccion> todos = this.list();
		List<Atraccion> activos = new ArrayList<Atraccion>();
		for (Atraccion atraccion : todos) {
			if(atraccion.estaActivo()) {
				activos.add(atraccion);
			}
		}
		return activos;
	}

	public Atraccion crear(String nombre, Tipo tipo, Integer costo, Double duracion, Integer cupo, String imagen, String descripcion, Boolean activo) {
		Atraccion atraccion = new Atraccion(-1, nombre, costo, duracion, cupo, tipo, descripcion, imagen,activo);

		if (atraccion.esValido()) {
			AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
			atraccionDAO.insertar(atraccion);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		return atraccion;
	}

	public Attraction update(Integer id, String name, Integer cost, Double duration, Integer capacity) {

		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		Attraction attraction = attractionDAO.find(id);

		attraction.setName(name);
		attraction.setCost(cost);
		attraction.setDuration(duration);
		attraction.setCapacity(capacity);

		if (attraction.isValid()) {
			attractionDAO.update(attraction);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		return attraction;
	}

	public void eliminar(int id) {
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		atraccionDAO.eliminar(id);
	}

	public Attraction find(Integer id) {
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		return attractionDAO.find(id);
	}

}
