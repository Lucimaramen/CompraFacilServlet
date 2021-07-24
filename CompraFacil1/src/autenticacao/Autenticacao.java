package autenticacao;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoCliente;
import modelo.CompraFacil;

/**
 * Servlet implementation class Autenticacao
 */
@WebServlet("/Autenticacao")
public class Autenticacao extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DaoCliente dao;       
	
    public Autenticacao() {
        super();
        dao = new DaoCliente();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sessao = request.getSession();
        sessao.removeAttribute("cliente");
        response.sendRedirect("CompraControlador?operacao=select");
	}


    //Faz a verifiação das credenciais de acesso
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");

    List<CompraFacil> listaCliente = dao.getAutenticacao(email, senha);

	try {
		if (listaCliente.isEmpty() != true){
			for (CompraFacil cliente : listaCliente) {
				String nome = cliente.getNome();
	
		HttpSession sessao = request.getSession();
		sessao.setAttribute("cliente", nome);
		
		//response.sendRedirect("index.jsp");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		
	}
			
	}else{
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/loginN.jsp");
		dispatcher.forward(request, response);
		
	}
		
} catch (Exception e) {
	RequestDispatcher dispatcher = request.getRequestDispatcher("telas/loginN.jsp");
	dispatcher.forward(request, response);
		
		e.printStackTrace(); 
	}	
    }
}



