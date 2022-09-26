package controllersUsuario;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoUsuario;
import model.Usuario;

@WebServlet("/perfil")
public class ListaPerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Usuario> listaUsuario = DaoUsuario.listarUsuario();
		request.setAttribute("usuarios", listaUsuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("perfil.jsp");
		dispatcher.forward(request, response);										
	}
}
