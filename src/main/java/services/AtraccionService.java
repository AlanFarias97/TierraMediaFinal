package services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import model.Atraccion;
import model.Attraction;
import model.Tipo;
import model.Usuario;
import persistence.AtraccionDAO;
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

	public Atraccion modificar(int id,String nombre, Tipo tipo, Integer costo, Double duracion, Integer cupo, String imagen, String descripcion) {

		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		Atraccion atraccion = atraccionDAO.obtenerPorId(id);
		
		atraccion.setNombre(nombre);
		atraccion.setTiempo(duracion);
		atraccion.setPrecio(costo);
		atraccion.setCupoDisponible(cupo);
		atraccion.setImagen(imagen);
		atraccion.setDescripcion(descripcion);

		if (atraccion.esValido()) {
			atraccionDAO.modificar(atraccion);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		return atraccion;
	}

	public void eliminar(int id) {
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		atraccionDAO.eliminar(id);
	}

	public Atraccion find(Integer id) {
		AtraccionDAO attractionDAO = DAOFactory.getAtraccionDAO();
		return attractionDAO.obtenerPorId(id);
	}

	public void comprarAtraccion(int atraccionId,Usuario usuario) throws SQLException {
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		Atraccion atraccion = atraccionDAO.obtenerPorId(atraccionId);
		
		 usuario.validarCompra(atraccion);
	}
	
	public void delete(Integer id) {
		Atraccion atraccion = new Atraccion(id, null, 0, 0, 0,null,null,null,null);

		AtraccionDAO attractionDAO = DAOFactory.getAtraccionDAO();
		attractionDAO.delete(atraccion);
	}

}
