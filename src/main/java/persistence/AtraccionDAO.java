package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Atraccion;

public interface AtraccionDAO {

    public abstract Atraccion obtenerPorNombre(String nombre);

    public abstract List<Atraccion> obtenerTodos();

    public int actualizar(Atraccion atraccion);

    public Atraccion toAtraccion(Object objeto) throws SQLException;

    public Atraccion obtenerPorId(int id);
    
    public int insertar(Atraccion atraccion);
}
