package services;

import java.util.List;

import model.Promocion;
import persistence.commons.DAOFactory;

public class PromocionService {
	public List<Promocion> list() {
		return DAOFactory.getPromocionDAO().obtenerTodos();
	}

}
