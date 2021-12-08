package persistence.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Atraccion;
import model.Producto;
import model.Usuario;
import model.nullobjects.UsuarioNull;
import persistence.AtraccionDAO;
import persistence.ItinerarioDAO;
import persistence.UsuarioDAO;
import persistence.commons.ConnectionProvider;
import persistence.commons.DAOFactory;
import persistence.commons.MissingDataException;



public class UsuarioDAOImpl implements UsuarioDAO {

	public int insert(Usuario usuario) {
		try {
			String sql = "INSERT INTO usuario (nombre, tipo_preferido_id,monedas,tiempo,imagen,hash_contrasenia,activo) VALUES (?, ?,?,?,?,?,?)";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, usuario.getNombre());
			statement.setString(2, String.valueOf(usuario.getTipoPreferido()));
			statement.setInt(3,usuario.getMonedas());
			statement.setDouble(4,usuario.getTiempoDisponible());
			statement.setString(5, usuario.getImagenPerfil());
			statement.setString(6, usuario.getHashContrasenia());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public List<Usuario> obtenerTodos() {
		try {
			String query = "SELECT * FROM usuario";
			Connection con = ConnectionProvider.getConnection();

			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			ArrayList<Usuario> usuarios = new ArrayList<>();

			while (rs.next()) {
				usuarios.add(toUsuario(rs));
			}

			return usuarios;

		} catch (Exception e) {
			throw new MissingDataException(e);
		}

	}

	public int actualizar(Usuario usuario) {
		try {
			String sql = "UPDATE usuario SET monedas = ?, tiempo = ? WHERE id = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, usuario.getMonedas());
			statement.setDouble(2, usuario.getTiempoDisponible());
			statement.setInt(3, usuario.getId());
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	public Usuario buscarPorNombre(String username) {
		try {
			String sql = "SELECT * FROM usuario WHERE nombre = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, username);
			ResultSet resultados = statement.executeQuery();

			Usuario user = UsuarioNull.build();

			if (resultados.next()) {
				user = toUsuario(resultados);
			}

			return user;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	@Override
	//id,nombre,tipo,monedas,tiempo,imagen,hash,activo
	public Usuario toUsuario(Object objeto) throws SQLException {
		ResultSet resultados = (ResultSet) objeto;
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();

		int id = resultados.getInt(1);
		String nombre = resultados.getString(2);
		int idTipoPreferido = resultados.getInt(3);
		int monedas = resultados.getInt(4);
		Double tiempo = resultados.getDouble(5);
		String imagenPerfil = resultados.getString(6);
		String hash = resultados.getString(6);
		Boolean activo = Boolean.parseBoolean(resultados.getString(7));

		String tipoPreferido = ((AtraccionDAOImpl) atraccionDAO).obtenerTipoNombre(idTipoPreferido);
		Usuario usuario = new Usuario(id, nombre, tipoPreferido, monedas, tiempo,imagenPerfil,hash,activo);
		usuario.setImagenPerfil(imagenPerfil);
		ItinerarioDAO itinerarioDAO = DAOFactory.getItinerarioDAO();
		List<Atraccion> atraccionesCompradas = itinerarioDAO.obtenerAtraccionesCompradas(id);

		usuario.setAtraccionesCompradas(atraccionesCompradas);

		return usuario;
	}

	@Override
	public int actualizarItinerario(Usuario usuario) {
		int rows = 0;
		for (Producto producto : usuario.getItinerario()) {
			String sql = "INSERT INTO itinerario (usuario_id, atraccion_id, promocion_id) VALUES (?, ?, ?)";
			Connection conn;
			try {
				conn = ConnectionProvider.getConnection();
				PreparedStatement statement = conn.prepareStatement(sql);
				statement.setInt(1, usuario.getId());
				if (producto.esPromocion()) {
					statement.setString(2, null);
					statement.setInt(3, producto.getId());
				} else if (!producto.esPromocion()) {
					statement.setInt(2, producto.getId());
					statement.setString(3, null);
				}
				rows = statement.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return rows;
	}

}
