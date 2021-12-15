package model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Scanner;

import persistence.UsuarioDAO;
import persistence.commons.DAOFactory;
import utils.Crypt;


public class Usuario {
    private int id;
    private String nombre;
    private int monedas;
    private Tipo tipo;
    private double tiempoDisponible;
    private List<Producto> itinerario;
    private List<Atraccion> atraccionesCompradas;
    private String imagenPerfil;
    private String hashContrasenia;
    private Boolean admin;
    private Boolean activo;
    private int dineroGastado;
    private double tiempoGastado;
    
    private Map<String, String> errores;
    

//
//    public Usuario(int id, String nombre, String preferencia, int monedas, double tiempo) {
//        this.id = id;
//        this.nombre = nombre;
//        this.tipoPreferido = TipoAtraccion.valueOf(preferencia.toUpperCase());
//        this.monedas = monedas;
//        this.tiempoDisponible = tiempo;
//        this.itinerario = new ArrayList<>();
//        this.atraccionesCompradas = new ArrayList<>();
//    }
//    
    public Usuario(int id, String nombre, Tipo preferencia, int monedas, double tiempo, String imagenPerfil, String hashContrasenia,Boolean activo,Boolean admin) {
        this.id = id;
        this.nombre = nombre;
        this.tipo = preferencia;
        this.monedas = monedas;
        this.tiempoDisponible = tiempo;
        this.itinerario = new ArrayList<>();
        this.atraccionesCompradas = new ArrayList<>();
        this.imagenPerfil = imagenPerfil;
        this.hashContrasenia = hashContrasenia;
        this.admin = admin;
        this.activo = activo;
    }
    
    public Map<String, String> getErrores() {
		return errores;
	}

	public void setErrores(Map<String, String> errores) {
		this.errores = errores;
	}

	public void setId(int id) {
		this.id = id;
	}

    
    public Boolean getAdmin() {
		return admin;
	}
    
    public Boolean esAdmin() {
		return admin;
	}

	public boolean isNull() {
		return false;
	}

	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}

    public Boolean getActivo() {
		return activo;
	}

	public void setActivo(Boolean activo) {
		this.activo = activo;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setMonedas(int monedas) {
		this.monedas = monedas;
	}

//	public void setTipoPreferido(TipoAtraccion tipoPreferido) {
//		this.tipoPreferido = tipoPreferido;
//	}

	public void setTiempoDisponible(double tiempoDisponible) {
		this.tiempoDisponible = tiempoDisponible;
	}

	public int getId() {
        return this.id;
    }

    public String getNombre() {
        return this.nombre;
    }

    public int getMonedas() {
        return monedas;
    }

//    public TipoAtraccion getTipoPreferido() {
//        return tipoPreferido;
//    }
    
  
    public Tipo getTipo() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	public void setAtraccionesCompradas(List<Atraccion> atraccionesCompradas) {
        this.atraccionesCompradas = atraccionesCompradas;
    }

    public String getImagenPerfil() {
        return imagenPerfil;
    }

    public void setImagenPerfil(String imagenPerfil) {
        this.imagenPerfil = imagenPerfil;
    }


    public double getTiempoDisponible() {
        return tiempoDisponible;
    }

    
    public String getHashContrasenia() {
		return hashContrasenia;
	}

	public void setHashContrasenia(String hashContrasenia) {
		this.hashContrasenia = hashContrasenia;
	}
/*
	public void analizarSugerencias(List<Producto> sugerencias) throws SQLException {
        Scanner in = new Scanner(System.in);
        String respuesta;

        mostrarPresentacion();
        productosSinCupo(sugerencias);
        System.out.println("---Armá tu itinerario---");

        for (Producto sugerencia : sugerencias) {
            if (this.monedas == 0) {
                System.out.println("Te quedaste sin monedas :(");
                break;
            }
            if (this.tiempoDisponible == 0) {
                System.out.println("Te quedaste sin tiempo :(");
                break;
            }

            if (puedeComprar(sugerencia)) {
                mostrarProducto(sugerencia);
                respuesta = in.nextLine().toUpperCase();

                while (!respuesta.equals("SI") && !respuesta.equals("NO")) {
                    System.out.println("Por favor, ingresá Si o No.");
                    respuesta = in.nextLine().toUpperCase();
                }

                if (respuesta.equals("SI")) {
                    adquirirProducto(sugerencia);
                }
                System.out.println("---------------------------------");
            }
        }

        System.out.println("¡Listo! Itinerario generado.");
        System.out.println("---------------------------------");
        in.close();

    }
*/
    public void adquirirProducto(Producto sugerencia) throws SQLException {
        this.itinerario.add(sugerencia);
        this.atraccionesCompradas.addAll(sugerencia.getAtraccionesTotales());
        this.actualizarUsuario(sugerencia);
        this.tiempoGastado += sugerencia.getTiempo();
        this.dineroGastado += sugerencia.getPrecio();
        sugerencia.actualizarCupo();
        this.actualizarItinerario();
        
        //System.out.println("Tiempo restante: " + this.tiempoDisponible);
        //System.out.println("Monedas restantes: " + this.monedas);
    }
/*
    private void mostrarProducto(Producto sugerencia) {
        System.out.println("Nombre: " + sugerencia.getNombre());
        System.out.println("Precio: " + sugerencia.getPrecio() + " monedas");
        System.out.println("Tiempo: " + sugerencia.getTiempo() + " horas");
        System.out.println("Tipo: " + sugerencia.getTipo());
        System.out.println("Querés comprarlo?(Si/No)");
    }
*/
    public boolean puedeComprar(Producto sugerencia) {
        return this.monedas >= sugerencia.getPrecio() && this.tiempoDisponible >= sugerencia.getTiempo()
                && this.noSeVisito(sugerencia) && sugerencia.tieneCupo();
    }
/*
    private void mostrarPresentacion() {
        System.out.println("¡Hola, " + this.getNombre() + "!");
        System.out.println("Tus monedas: " + this.monedas);
        System.out.println("Tu tiempo disponible: " + this.tiempoDisponible + " horas");
        System.out.println("Tu preferencia: " + this.tipo.getNombre());
    }
*/
    /*
    private void productosSinCupo(List<Producto> sugerencias) {
        boolean hayAtraccionSinCupo = false;
        for (Producto producto : sugerencias) {

            if (!producto.tieneCupo() && !hayAtraccionSinCupo) {
                hayAtraccionSinCupo = true;
                System.out.println("Los siguientes productos ya no tienen cupo:");
            }

            if (!producto.tieneCupo()) {
                System.out.println("-" + producto.getNombre());
            }

        }
    }
*/
    private void actualizarUsuario(Producto sugerencia) throws SQLException {
        this.monedas -= sugerencia.getPrecio();
        this.tiempoDisponible -= sugerencia.getTiempo();
        UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();

        usuarioDAO.actualizar(this);
    }

    public List<Atraccion> getAtraccionesCompradas() {
        return this.atraccionesCompradas;
    }

    public boolean noSeVisito(Producto sugerencia) {
        if (sugerencia.esAtraccion()) {
            return !atraccionesCompradas.contains((Atraccion) sugerencia);
        }

        if (sugerencia.esPromocion()) {
            List<Atraccion> atraccionesPromo = ((Promocion) sugerencia).getAtracciones();
            boolean noContieneGratis = true;
            if (sugerencia.esPromoAxB()) {
                PromoAxB axb = (PromoAxB) sugerencia;
                noContieneGratis = !atraccionesCompradas.contains(axb.getAtraccionGratis());
            }
            return Collections.disjoint(atraccionesCompradas, atraccionesPromo) && noContieneGratis;
        }
        return false;
    }

    public void setItinerario(List<Producto> itinerario) {
        this.itinerario = itinerario;
    }

    public List<Producto> getItinerario() {
        return itinerario;
    }

    public void actualizarItinerario() {
        UsuarioDAO usuarioDAO = DAOFactory.getUsuarioDAO();
        usuarioDAO.actualizarItinerario(this);
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
        Usuario other = (Usuario) obj;
        return id == other.id && Objects.equals(nombre, other.nombre);
    }
    
    public boolean checkPassword(String password) {
		return Crypt.match(password, this.hashContrasenia);
	}
    
    public boolean esValido() {
		validar();
		return errores.isEmpty();
	}
	
	public void validar() {
		errores = new HashMap<String, String>();

		if (monedas <= 0) {
			errores.put("monedas", "La cantidad de monedas debe ser positiva");
		}
		if (tiempoDisponible <= 0) {
			errores.put("duration", "El tiempo disponible debe ser positivo");
		}
	}
	
	public Boolean estaActivo() {
		return activo;
	}
	
	public Boolean sinCompras() {
		return this.atraccionesCompradas.size() == 0;
	}
	
	public double getTiempoGastado() {
		return this.tiempoGastado;
	}
	
	public int getDineroGastado() {
		return this.dineroGastado;
	}

}
