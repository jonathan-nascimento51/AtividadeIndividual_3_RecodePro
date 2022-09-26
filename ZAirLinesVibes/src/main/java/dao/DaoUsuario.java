package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.ConnectionFactory;
import model.Usuario;

public class DaoUsuario {
	
	private static Connection connection = ConnectionFactory.createConnection();
	private static String sql;
	
	public static void cadastrar (Usuario user) {
		sql = "INSERT INTO usuario (nome, email, senha, fone) VALUES (?, ?, ?, ?)";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, user.getNome());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getSenha());
			stmt.setString(4, user.getFone());
			stmt.executeUpdate();
			stmt.close();
			System.out.println("Inserido com Sucesso");
			
		} catch (SQLException e) {
			System.out.println("Falha ao inserir Usuario" + e.getMessage());
		}
	}
	
	public static void redefinirSenha (Usuario usuario) {
		sql = "UPDATE usuario SET senha = ? WHERE email = ?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getSenha());
			stmt.setString(2, usuario.getEmail());
			stmt.executeUpdate();
			stmt.close();
			System.out.println("Senha redefinida com sucesso!");
			
		} catch(SQLException e){
			System.out.println("Falha ao redefinir senha" + e.getMessage());
		}
	}
	
	public static ArrayList<Usuario> listarUsuario() {
		
		ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
		
		sql = "SELECT * FROM usuario";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setNome(rs.getString(1));
				usuario.setEmail(rs.getString(2));
				usuario.setSenha(rs.getString(3));
				usuario.setFone(rs.getString(4));
				usuarios.add(usuario);
			}
			System.out.println("Busca de ususario sucedida!");
			return usuarios;
		} catch(Exception e) {
			System.out.println("Falha ao buscar usuario");
			return null;
		}
	}

	public void deletarUsuario (Usuario usuario) {
		sql = "DELETE FROM usuario WHERE email = ?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getEmail());
			stmt.executeUpdate();
			stmt.close();
			
			System.out.println("Usuario Deletado!");
			
		} catch(Exception e) {
			System.out.println("Falha ao deletar usuario" + e.getMessage());
		}
	}
}
