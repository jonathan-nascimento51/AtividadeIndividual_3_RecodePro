package controllersUsuario;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoUsuario;
import model.Usuario;

@WebServlet("/cadastrar")
public class CadastrarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario user = new Usuario();
		
		user.setNome(request.getParameter("nome"));
		user.setEmail(request.getParameter("email"));
		user.setSenha(request.getParameter("senha"));
		String re_senha = request.getParameter("re-senha");
		user.setFone(request.getParameter("fone"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro.jsp");

				/*VALIDAÇÃO DOS CAMPOS DO FORMULARIO*/
		if (user.getNome() == null || user.getNome().equals("")) {
			request.setAttribute("status", "nomeVazio");
			dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}
		
		if (user.getEmail() == null || user.getEmail().equals("")) {
			request.setAttribute("status", "emailVazio");
			dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}
		
		if (user.getSenha() == null || user.getSenha().equals("")) {
			request.setAttribute("status", "senhaVazio");
			dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}
		
		if (!user.getSenha().equals(re_senha)) {
			request.setAttribute("status", "senhaNaoConfere");
			dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}
		
		if (user.getFone() == null || user.getFone().equals("")) {
			request.setAttribute("status", "telefoneVazio");
			dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}
		
		DaoUsuario.cadastrar(user);
		
		String rowCount = user.getNome();
		
		if (rowCount != "") {
			request.setAttribute("status", "success");
		} else {
			request.setAttribute("status", "failed");
		}
		
		dispatcher.forward(request, response);
	}

}
