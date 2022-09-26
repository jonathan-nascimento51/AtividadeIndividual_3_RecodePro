package controllersPassagem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoPassagem;
import model.Passagem;

@WebServlet("/selectPassagem")
public class SelectPassagem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Passagem passagem = new Passagem();
	DaoPassagem dao = new DaoPassagem();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		passagem.setId(Integer.parseInt(request.getParameter("id")));
		
		dao.selecionarPassagem(passagem);
		
		request.setAttribute("id", passagem.getId());
		request.setAttribute("classe", passagem.getClasse());
		request.setAttribute("qtd", passagem.getQtdPassageiro());
		request.setAttribute("partida", passagem.getPartida());
		request.setAttribute("destino", passagem.getDestino());
		request.setAttribute("dataIda", passagem.getDataIda());
		request.setAttribute("dataVolta", passagem.getDataVolta());
		request.setAttribute("usuario", passagem.getFk_usuario_email());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("editarPassagem.jsp");
		dispatcher.forward(request, response);
		
	}

}
