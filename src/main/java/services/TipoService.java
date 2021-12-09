package services;

import java.util.List;

import model.Tipo;
import persistence.commons.DAOFactory;

public class TipoService {
	public List<Tipo> list() {
		return DAOFactory.getTipoDAO().obtenerTodos();
	}

}
