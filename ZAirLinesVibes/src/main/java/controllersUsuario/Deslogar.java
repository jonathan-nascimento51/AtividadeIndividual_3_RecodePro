package controllersUsuario;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sair")
public class Deslogar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//HttpSession: Fornece uma maneira de identificar um usuário em mais de uma solicitação de página ou visita a um site e armazenar informações sobre esse usuário.
				HttpSession session = request.getSession(); ////(getSession)obter sessão: Retorna a sessão atual associada a esta solicitação
				session.invalidate(); //invalidate() = Invalida esta sessão e desvincula quaisquer objetos vinculados a ela.
				response.sendRedirect("entrar.jsp"); //sendRedicect = enviar redirecionamento ("localização da string")
				
			}

}
