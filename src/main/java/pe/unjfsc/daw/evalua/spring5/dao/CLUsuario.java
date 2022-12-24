package pe.unjfsc.daw.evalua.spring5.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.unjfsc.daw.evalua.spring5.db.BDConnection;
import pe.unjfsc.daw.evalua.spring5.entity.CEUsuario;

public class CLUsuario {
	private Connection connection;
	private PreparedStatement statement;
	private boolean estadoOperacion;

	public boolean insertar(CEUsuario u) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();

		try {
			connection.setAutoCommit(false);
			sql = "CALL pa_insertar_usuario(?,?,?,?,?,?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, u.getDni());
			statement.setString(2, u.getNombre());
			statement.setString(3, u.getApellido());
			statement.setString(4, u.getCorreo());
			statement.setString(5, u.getUsuario());
			statement.setString(6, u.getPassword());
			estadoOperacion = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}

		return estadoOperacion;
	}


	public boolean editar(CEUsuario u) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql = "CALL ";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, u.getId());
			statement.setString(2, u.getDni());
			statement.setString(3, u.getNombre());
			statement.setString(4, u.getApellido());
			statement.setString(5, u.getCorreo());
			statement.setString(6, u.getUsuario());
			statement.setString(7, u.getPassword());

			estadoOperacion = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();

		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}

		return estadoOperacion;
	}

	public boolean eliminar(int xid) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql = "";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, xid);

			estadoOperacion = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();

		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}

		return estadoOperacion;
	}

	public List<CEUsuario> obtenerUsuarios() throws SQLException {
		ResultSet resultSet = null;
		List<CEUsuario> listarUsuarios= new ArrayList<CEUsuario>();

		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();

		try {
			sql = "SELECT * FROM usuario";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				CEUsuario u=new CEUsuario();
				u.setId(resultSet.getInt(1));
				u.setDni(resultSet.getString(2));
				u.setNombre(resultSet.getString(3));
				u.setApellido(resultSet.getString(4));
				u.setCorreo(resultSet.getString(5));
				u.setUsuario(resultSet.getString(6));
				u.setPassword(resultSet.getString(7));
				listarUsuarios.add(u);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listarUsuarios;
	}

	public CEUsuario obtenerIDUsuario(int xid) throws SQLException {
		ResultSet resultSet = null;
		CEUsuario u=new CEUsuario();

		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();

		try {
			sql = "SELECT * FROM usuario WHERE id =?";
			statement=connection.prepareStatement(sql);
			statement.setInt(1, xid);
			
			resultSet = statement.executeQuery();
			
			if(resultSet.next()) {				
				u.setId(resultSet.getInt(1));
				u.setDni(resultSet.getString(2));
				u.setNombre(resultSet.getString(3));
				u.setApellido(resultSet.getString(4));
				u.setCorreo(resultSet.getString(5));
				u.setUsuario(resultSet.getString(6));
				u.setPassword(resultSet.getString(7));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return u;
	}

	private Connection obtenerConexion() throws SQLException {
		return BDConnection.getConnection();
	}
}
