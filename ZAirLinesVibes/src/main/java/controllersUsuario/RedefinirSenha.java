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

@WebServlet("/redefinir")
public class RedefinirSenha extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = new Usuario();
		
		usuario.setEmail(request.getParameter("r-email"));
		usuario.setSenha(request.getParameter("r-senha"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("entrar.jsp");
		
		if ( usuario.getEmail() == null || usuario.getEmail().equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("entrar.jsp");
			dispatcher.forward(request, response);
		}
		if ( usuario.getSenha() == null || usuario.getSenha().equals("")) {
			request.setAttribute("status", "invalidReSenha");
			dispatcher = request.getRequestDispatcher("entrar.jsp");
			dispatcher.forward(request, response);
		}
		
		DaoUsuario.redefinirSenha(usuario);
		
		if ( !(usuario.getEmail() == null) || !usuario.getEmail().equals("") || !(usuario.getSenha() == null) || !usuario.getSenha().equals("")) {
			request.setAttribute("status", "correctReSenha");
			dispatcher = request.getRequestDispatcher("entrar.jsp");
			dispatcher.forward(request, response);
		}	
		
	}

}
