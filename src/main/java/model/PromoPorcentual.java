package model;

import java.util.List;

public class PromoPorcentual extends Promocion {
    private int porcentaje;

    public PromoPorcentual(int id, String nombre, TipoAtraccion tipoAtraccion, List<Atraccion> atracciones, int porcentaje) {
        super(id, nombre, tipoAtraccion, atracciones);
        this.porcentaje = porcentaje;
    }
    
    public PromoPorcentual(int id, String nombre, String tipoAtraccion,String tipoPromocion,String descripcion,String imagen,Boolean activo, List<Atraccion> atracciones, int porcentaje) {
    	//idPromo, nombre, tipo_atraccion, descripcion,imagen,activo,"PORCENTUAL",atracciones, Integer.parseInt(descuento)
    	super(id, nombre, tipoAtraccion, tipoPromocion,0,descripcion,imagen,activo, atracciones);
        this.porcentaje = porcentaje;
        int costo = this.getCosto();
        super.setDescuento(costo);
    }

    @Override
    public Integer getCosto() {
        return (int) Math.ceil(super.getCosto() * (1 - this.porcentaje/100.0));
    }

    @Override
    public boolean esAtraccion() {
        return false;
    }

	public int getPorcentaje() {
		return porcentaje;
	}

	@Override
    public boolean esPromoAxB() {
        return false;
    }

	@Override
	public boolean esPorcentual() {
		return true;
	}

	@Override
	public boolean esAbsoluta() {
		return false;
	}
}
