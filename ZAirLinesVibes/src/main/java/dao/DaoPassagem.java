package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.ConnectionFactory;
import model.Passagem;

public class DaoPassagem {
	
	private static Connection connection = ConnectionFactory.createConnection();
	private static String sql;
	
	public static void cadastrarPassagem(Passagem passagem) {
		sql = "INSERT INTO passagem (classe, qtdPassageiro, partida, destino, dataIda, dataVolta, fk_usuario_email) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, passagem.getClasse());
			stmt.setString(2, passagem.getQtdPassageiro());
			stmt.setString(3, passagem.getPartida());
			stmt.setString(4, passagem.getDestino());
			stmt.setString(5, passagem.getDataIda());
			stmt.setString(6, passagem.getDataVolta());
			stmt.setString(7, passagem.getFk_usuario_email());
			
			stmt.executeUpdate();
			stmt.close();
			
			System.out.println("Passagem inserida com sucesso!");
			
		} catch(SQLException e) {
			System.out.println("Falha ao inserir passagem" + e.getMessage());
		}
	}
	
	public static ArrayList<Passagem> listarPassagem() {
		
		ArrayList<Passagem> passagens = new ArrayList<Passagem>();
		
		sql = "SELECT * FROM passagem";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Passagem passagem = new Passagem();
				passagem.setId(rs.getInt(1));
				passagem.setClasse(rs.getString(2));
				passagem.setQtdPassageiro(rs.getString(3));
				passagem.setPartida(rs.getString(4));
				passagem.setDestino(rs.getString(5));
				passagem.setDataIda(rs.getString(6));
				passagem.setDataVolta(rs.getString(7));
				passagem.setFk_usuario_email(rs.getString(8));
				passagens.add(passagem);
			}
			System.out.println("Busca de passagens sucedida!");
			return passagens;
		} catch(Exception e) {
			System.out.println("Falha ao buscar passagens");
			return null;
		}
	}
	
    public void selecionarPassagem(Passagem passagem) {
    	sql = "SELECT * FROM passagem WHERE id = ?";
    	
    	try {
    		PreparedStatement stmt = connection.prepareStatement(sql);
    		stmt.setInt(1, passagem.getId());

    		ResultSet rs = stmt.executeQuery();

    		while (rs.next()) {
    			passagem.setId(rs.getInt(1));
				passagem.setClasse(rs.getString(2));
				passagem.setQtdPassageiro(rs.getString(3));
				passagem.setPartida(rs.getString(4));
				passagem.setDestino(rs.getString(5));
				passagem.setDataIda(rs.getString(6));
				passagem.setDataVolta(rs.getString(7));
				passagem.setFk_usuario_email(rs.getString(8));
    		}
    		System.out.println("Select passagem sucedido");
    	} catch (Exception e) {
    		System.out.println("Falha ao selecionar passagem" + e.getMessage());
    	}
    }
    
    public void alterarPassagem (Passagem passagem) {
    	sql = "UPDATE passagem SET classe=?, qtdPassageiro=?, partida=?, destino=?, dataIda=?, dataVolta=? WHERE id=?";
    	
    	try {
    		PreparedStatement stmt = connection.prepareStatement(sql);
    		stmt.setString(1, passagem.getClasse());
    		stmt.setString(2, passagem.getQtdPassageiro());
    		stmt.setString(3, passagem.getPartida());
    		stmt.setString(4, passagem.getDestino());
    		stmt.setString(5, passagem.getDataIda());
    		stmt.setString(6, passagem.getDataVolta());
    		stmt.setInt(7, passagem.getId());
    		
    		stmt.executeUpdate();
    		System.out.println("Passagem atualizada com sucesso!");
    		
    	} catch(Exception e) {
    		System.out.println("Falha ao atualizar passagem" + e.getMessage());
    	}
    }
    
    public void deletarPassagem (Passagem passagem) {
    	sql = "DELETE FROM passagem WHERE id = ?";
    	
    	try {
    		PreparedStatement stmt = connection.prepareStatement(sql);
    		stmt.setInt(1, passagem.getId());
    		stmt.executeUpdate();
    		stmt.close();
    		
    		System.out.println("Passagem Deletada!");
    		
    	} catch(Exception e) {
    		System.out.println("Falha ao deletar passagem" + e.getMessage());
    	}
    }
}
