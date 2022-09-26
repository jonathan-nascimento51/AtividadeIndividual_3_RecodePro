package controllersUsuario;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoUsuario;
import model.Usuario;

@WebServlet("/deletarUsuario")
public class DeletarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Usuario usuario = new Usuario();
	DaoUsuario dao = new DaoUsuario();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		usuario.setEmail(request.getParameter("email"));
		dao.deletarUsuario(usuario);
		response.sendRedirect("index.jsp");				
	}

}