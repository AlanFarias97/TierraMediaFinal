package persistence.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Atraccion;
import persistence.AtraccionDAO;
import persistence.commons.ConnectionProvider;
import persistence.commons.MissingDataException;


public class AtraccionDAOImpl implements AtraccionDAO {

    public ArrayList<Atraccion> obtenerTodos() {

        try {
            String query = "SELECT * FROM atraccion";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            ArrayList<Atraccion> atracciones = new ArrayList<>();
            while (rs.next()) {
                atracciones.add(toAtraccion(rs)
                );
            }

            return atracciones;

        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public int actualizar(Atraccion atraccion) {
        try {
            String sql = "UPDATE atraccion SET cupo = ? WHERE nombre = ?";
            Connection conn = ConnectionProvider.getConnection();

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, atraccion.getCupoDisponible());
            statement.setString(2, atraccion.getNombre());

            return statement.executeUpdate();

        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public Atraccion obtenerPorNombre(String atraccionNombre) {
        try {
            String sql = "SELECT * FROM atraccion WHERE nombre = ?";
            Connection conn = ConnectionProvider.getConnection();

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, atraccionNombre);
            ResultSet resultados = statement.executeQuery();

            Atraccion atraccion = null;

            if (resultados.next()) {
                atraccion = toAtraccion(resultados);
            }

            return atraccion;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    public Atraccion obtenerPorId(int id) {
        try {
            String sql = "SELECT * FROM atraccion WHERE id = ?";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet resultados = statement.executeQuery();

            Atraccion atraccion = null;

            if (resultados.next()) {
                atraccion = toAtraccion(resultados);
            }

            return atraccion;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    public Atraccion toAtraccion(Object objeto) throws SQLException {
        ResultSet resultados = (ResultSet) objeto;

        int id = resultados.getInt(1);
        String nombre = resultados.getString(2);
        int costo = resultados.getInt(3);
        double tiempo = resultados.getDouble(4);
        int cupo = resultados.getInt(5);
        int idTipoAtraccion = resultados.getInt(6);
        String descripcion = resultados.getString(7);
        String imagen = resultados.getString(8);
        String nombreTipoAtraccion = obtenerTipoNombre(idTipoAtraccion).toUpperCase();
        Atraccion atraccion = new Atraccion(id, nombre, costo, tiempo, cupo, nombreTipoAtraccion);
        atraccion.setDescripcion(descripcion);
        atraccion.setImagen(imagen);

        return atraccion;
    }

    public String obtenerTipoNombre(int idTipo) throws SQLException {

        String sql = "SELECT nombre FROM tipo_atraccion WHERE tipo_atraccion_id = ?";
        Connection conn = ConnectionProvider.getConnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, idTipo);
        ResultSet resultadoId = statement.executeQuery();

        String nombre = "";
        if (resultadoId.next()) {
            nombre = resultadoId.getString(1).toUpperCase();
        }

        return nombre;
    }
    
	@Override
	public int insertar(Atraccion atraccion) {
		try {
			String sql = "INSERT INTO atraccion (nombre, precio, tiempo, cupo, tipo_atraccion_id, descripcion, imagen, activo) VALUES (?, ?, ?, ?)";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			int i = 1;
			statement.setString(i++, atraccion.getNombre());
			statement.setInt(i++, atraccion.getCosto());
			statement.setDouble(i++, atraccion.getTiempo());
			statement.setInt(i++, atraccion.getCupoDisponible());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

}
