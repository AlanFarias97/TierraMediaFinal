package services;

import java.util.ArrayList;
import java.util.List;

import model.Atraccion;
import model.PromoAbsoluta;
import model.PromoAxB;
import model.PromoPorcentual;
import model.Promocion;
import model.Tipo;
import persistence.AtraccionDAO;
import persistence.PromocionDAO;
import persistence.commons.DAOFactory;

public class PromocionService {
	public List<Promocion> list() {
		List<Promocion> promociones = DAOFactory.getPromocionDAO().obtenerTodos();
		List<Promocion> activos = new ArrayList<Promocion>();
		for (Promocion promocion : promociones) {
			if(promocion.estaActivo()) {
				activos.add(promocion);
			}
		}
		return activos;
	}

	public Promocion crear(String tipoPromocion, String nombre,String[] atracciones, Tipo tipoAtraccion, int descuento, String imagen,
			String descripcion, Boolean activo) {
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		List<Atraccion> atraccionesPromo= new ArrayList<Atraccion>();
				
		for(int i = 0;i<atracciones.length;i++) {
			int id = Integer.valueOf(atracciones[i]);
			Atraccion atraccion = atraccionDAO.obtenerPorId(id);
			atraccionesPromo.add(atraccion);
		}
		
		Promocion promocion = null;
		if(tipoPromocion.equals("Absoluta")) {
			promocion = new PromoAbsoluta(-1,nombre,tipoAtraccion,descripcion,imagen,activo,tipoPromocion,atraccionesPromo,descuento);
		} else if(tipoPromocion.equals("AxB")) {
			Atraccion atraccionGratis = DAOFactory.getAtraccionDAO().obtenerPorId(descuento);
			promocion = new PromoAxB(-1,nombre,tipoAtraccion,tipoPromocion,descuento,descripcion,imagen,activo,atraccionesPromo,atraccionGratis);
		} else if(tipoPromocion.equals("Porcentual")) {
			promocion = new PromoPorcentual(-1,nombre,tipoAtraccion,tipoPromocion,descripcion,imagen,activo,atraccionesPromo,descuento);
		}
		
		if (promocion.esValido()) {
			PromocionDAO promocionDAO = DAOFactory.getPromocionDAO();
			promocionDAO.insertar(promocion);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		
		return promocion;
	}
	
	public void eliminar(int id) {
		PromocionDAO promocionDAO = DAOFactory.getPromocionDAO();
		promocionDAO.eliminar(id);
	}

}
