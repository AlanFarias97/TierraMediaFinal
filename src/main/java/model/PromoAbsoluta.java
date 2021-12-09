package model;

import java.util.List;

public class PromoAbsoluta extends Promocion {
    private int descuento;

    public PromoAbsoluta(int id, String nombre, TipoAtraccion tipoAtraccion, List<Atraccion> atracciones, int monedas) {
        super(id, nombre, tipoAtraccion, atracciones);
        this.descuento = monedas;
    }

    public PromoAbsoluta(int id, String nombre, String tipoAtraccion,String descripcion, String imagen, Boolean activo, String tipoPromocion, List<Atraccion> atracciones, int monedas) {
        super(id, nombre, tipoAtraccion, tipoPromocion,monedas,descripcion,imagen,activo, atracciones);
        this.descuento = monedas;
    }

    @Override
    public Integer getCosto() {
        return super.getCosto() - this.descuento;
    }

    @Override
    public boolean esAtraccion() {
        return false;
    }

    @Override
    public boolean esPromoAxB() {
        return false;
    }

	@Override
	public boolean esPorcentual() {
		return false;
	}

	@Override
	public boolean esAbsoluta() {
		return true;
	}

	public int getDescuento() {
		return descuento;
	}
}
