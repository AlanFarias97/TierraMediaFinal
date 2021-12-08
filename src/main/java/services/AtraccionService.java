package services;

import java.util.List;

import model.Atraccion;
import model.Attraction;
import persistence.AtraccionDAO;
import persistence.AttractionDAO;
import persistence.commons.DAOFactory;


public class AtraccionService {

	public List<Atraccion> list() {
		return DAOFactory.getAtraccionDAO().obtenerTodos();
	}

	public Atraccion crear(String nombre, Integer costo, Double duracion, Integer cupo, String tipo, String descripcion, String imagen) {
		//int id, String nombre, int costo, double tiempo, int cupoDiario, String tipo, String descripcion, String imagen)

		Atraccion atraccion = new Atraccion(-1, nombre, costo, duracion, cupo, tipo, descripcion, imagen);

		if (atraccion.esValida()) {
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

	public void delete(Integer id) {
		Attraction attraction = new Attraction(id, null, null, null, null);

		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		attractionDAO.delete(attraction);
	}

	public Attraction find(Integer id) {
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		return attractionDAO.find(id);
	}

}
