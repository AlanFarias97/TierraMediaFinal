package model;

import java.util.List;
import java.util.Objects;

public abstract class Promocion implements Producto, Comparable<Promocion> {
	protected String nombre;
	protected List<Atraccion> atracciones;
	protected TipoAtraccion tipoAtraccion2;
	protected String tipoAtraccion;
	protected String tipoPromocion;
	protected int id;
	protected String descripcion;
	protected String imagen;
	protected int descuento;
	protected Boolean activo;

	public Promocion(int id, String nombre, TipoAtraccion tipoAtraccion, List<Atraccion> atracciones) {
		this.id = id;
		this.nombre = nombre;
		this.tipoAtraccion2 = tipoAtraccion;
		this.atracciones = atracciones;
	}
	
	public Promocion(int id, String nombre, String tipoAtraccion, String tipoPromocion, int descuento,String descripcion,String imagen, Boolean activo,List<Atraccion> atracciones) {
		this.id = id;
		this.nombre = nombre;
		this.tipoAtraccion = tipoAtraccion;
		this.tipoPromocion = tipoPromocion;
		this.descuento = descuento;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.activo = activo;
		this.atracciones = atracciones;
	}

	public int getId() {
		return this.id;
	}
	public TipoAtraccion getTipoAtraccion2() {
		return tipoAtraccion2;
	}

	public void setTipoAtraccion2(TipoAtraccion tipoAtraccion2) {
		this.tipoAtraccion2 = tipoAtraccion2;
	}

	public String getTipoAtraccion() {
		return tipoAtraccion;
	}

	public void setTipoAtraccion(String tipoAtraccion) {
		this.tipoAtraccion = tipoAtraccion;
	}

	public String getTipoPromocion() {
		return tipoPromocion;
	}

	public void setTipoPromocion(String tipoPromocion) {
		this.tipoPromocion = tipoPromocion;
	}

	public int getDescuento() {
		return descuento;
	}

	public void setDescuento(int descuento) {
		this.descuento = descuento;
	}

	public Boolean getActivo() {
		return activo;
	}

	public void setActivo(Boolean activo) {
		this.activo = activo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setAtracciones(List<Atraccion> atracciones) {
		this.atracciones = atracciones;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public List<Atraccion> getAtracciones() {
		return atracciones;
	}

	public List<Atraccion> getAtraccionesTotales() {
		return atracciones;
	}

	public TipoAtraccion getTipo() {
		return tipoAtraccion2;
	}

	public int compareTo(Promocion otra) {
		if (this.getCosto().compareTo(otra.getCosto()) == 0) {
			return -this.getTiempo().compareTo(otra.getTiempo());
		}
		return -this.getCosto().compareTo(otra.getCosto());
	}

	public Double getTiempo() {
		double total = 0;
		for (int i = 0; i < this.atracciones.size(); i++) {
			total += this.atracciones.get(i).getTiempo();
		}
		return total;
	}

	public Integer getCosto() {
		int total = 0;

		for (int i = 0; i < this.atracciones.size(); i++) {
			total += this.atracciones.get(i).getCosto();
		}
		return total;
	}

	public boolean tieneCupo() {
		boolean hay = true;
		for (Atraccion atraccion : atracciones) {
			hay &= atraccion.tieneCupo();
		}
		return hay;
	}

	public void actualizarCupo() {
		for (Atraccion atraccion : atracciones) {
			atraccion.actualizarCupo();
		}
	}

	public String getTipoPromo() {
    	if(this.esPromoAxB()) {
    		return "AxB";
    	}else if(this.esAbsoluta()) {
    		return "Absoluta";
    	}else if(this.esPorcentual()) {
    		return "Porcentual";
    	}return "No es PROMO";
    }
	
	public boolean esPromocion() {
		return true;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, nombre);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Promocion other = (Promocion) obj;
		return id == other.id && Objects.equals(nombre, other.nombre);
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	public String getListado() {
		String listado = "";
		for (Atraccion atraccion : atracciones) {
			listado += atraccion.getNombre() + "/";
		}
		return listado;
	}
}
