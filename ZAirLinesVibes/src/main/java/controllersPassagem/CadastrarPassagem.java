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

@WebServlet("/cadastraPassagem")
public class CadastrarPassagem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Passagem passagem = new Passagem();
		
		passagem.setClasse(request.getParameter("classe"));
		passagem.setQtdPassageiro(request.getParameter("qtdPassageiro"));
		passagem.setPartida(request.getParameter("partida"));
		passagem.setDestino(request.getParameter("destino"));
		passagem.setDataIda(request.getParameter("dataPartida"));
		passagem.setDataVolta(request.getParameter("dataDestino"));
		passagem.setFk_usuario_email(request.getParameter("fk_usuario"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		
		if (passagem.getFk_usuario_email() == null || passagem.getFk_usuario_email().equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
		if (passagem.getPartida() == null || passagem.getPartida().equals("")) {
			request.setAttribute("status", "invalidPartida");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
		if (passagem.getDestino() == null || passagem.getDestino().equals("")) {
			request.setAttribute("status", "invalidDestino");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
		if (passagem.getDataIda() == null || passagem.getDataIda().equals("")) {
			request.setAttribute("status", "invalidDataIda");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
		if (passagem.getDataVolta() == null || passagem.getDataVolta().equals("")) {
			request.setAttribute("status", "invalidDataVolta");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
		if (!(passagem.getFk_usuario_email() == null) || !(passagem.getFk_usuario_email().equals(""))) {
			request.setAttribute("status", "success");
			dispatcher = request.getRequestDispatcher("index.jsp");
			DaoPassagem.cadastrarPassagem(passagem);	
			dispatcher.forward(request, response);
		}		
		
	}

}
