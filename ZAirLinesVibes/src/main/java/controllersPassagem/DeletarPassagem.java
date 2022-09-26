package controllersPassagem;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoPassagem;
import model.Passagem;

@WebServlet("/deletarPassagem")
public class DeletarPassagem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Passagem passagem = new Passagem();
	DaoPassagem dao = new DaoPassagem();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		passagem.setId(Integer.parseInt(request.getParameter("id")));
		dao.deletarPassagem(passagem);
		response.sendRedirect("index.jsp");		
		
	}

}
