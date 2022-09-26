package model;

public class Passagem {
	private int id;
	private String classe;
	private String qtdPassageiro;
	private String partida;
	private String destino;
	private String dataIda;
	private String dataVolta;
	private String fk_usuario_email;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClasse() {
		return classe;
	}
	public void setClasse(String classe) {
		this.classe = classe;
	}
	public String getQtdPassageiro() {
		return qtdPassageiro;
	}
	public void setQtdPassageiro(String qtdPassageiro) {
		this.qtdPassageiro = qtdPassageiro;
	}
	public String getPartida() {
		return partida;
	}
	public void setPartida(String partida) {
		this.partida = partida;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public String getDataIda() {
		return dataIda;
	}
	public void setDataIda(String dataIda) {
		this.dataIda = dataIda;
	}
	public String getDataVolta() {
		return dataVolta;
	}
	public void setDataVolta(String dataVolta) {
		this.dataVolta = dataVolta;
	}
	public String getFk_usuario_email() {
		return fk_usuario_email;
	}
	public void setFk_usuario_email(String fk_usuario_email) {
		this.fk_usuario_email = fk_usuario_email;
	}
	
}
