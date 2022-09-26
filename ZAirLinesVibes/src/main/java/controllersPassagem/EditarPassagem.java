package controllersPassagem;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoPassagem;
import model.Passagem;

@WebServlet("/editarPassagem")
public class EditarPassagem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DaoPassagem dao = new DaoPassagem();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Passagem passagem = new Passagem();
		
		passagem.setClasse(request.getParameter("classe"));
		passagem.setQtdPassageiro(request.getParameter("qtd"));
		passagem.setPartida(request.getParameter("partida"));
		passagem.setDestino(request.getParameter("destino"));
		passagem.setDataIda(request.getParameter("dataIda"));
		passagem.setDataVolta(request.getParameter("dataVolta"));
		passagem.setId(Integer.parseInt(request.getParameter("id")));
		
		dao.alterarPassagem(passagem);
		
		response.sendRedirect("index.jsp");
	}

}
