package controlador;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.DaoCompraFacil;
import modelo.CompraFacil;
import modelo.CompraFacilProduto;

/**
 * Servlet implementation class CompraControlador
 */
@WebServlet("/CompraControlador")
@MultipartConfig
public class CompraControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DaoCompraFacil dao;
       
    public CompraControlador() {
        super();
        dao = new DaoCompraFacil();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String operacao = request.getParameter("operacao");
	
	switch(operacao) {
	case "insert":
		incluiRegistro(request, response);
		break;
	case "insert1":
		incluirProduto(request, response);
		break;
	case "delete":
		delete(request, response);
		break;
	case "formUpdate":
		formUpdate(request, response);
		break;
	case "update":
		update(request, response);
	    break;
	case "select":
		selectAll(request, response);
		break;
	case"selectNome":
		selectNome(request, response);
		break;
	case"selectCategoria":
		selectCategoria(request,response);
		break;
	case"selectCategoriaLimpeza":
		selectCategoriaLimpeza(request,response);
		break;
	case"selectCategoriaHigiene":
		selectCategoriaHigiene(request,response);
		break;
	case"login":
		login(request,response);
		break;
		
		default:
		break;
	}
	}

	private void selectCategoriaHigiene(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomeCategoriaHigiene = request.getParameter("higiene");
		
	    List<CompraFacilProduto> listaProduto = dao.selectCategoriaHigiene(nomeCategoriaHigiene);
		request.setAttribute("listaRegistro", listaProduto);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/servicoHigiene.jsp");
		dispatcher.forward(request, response);

			
			//response.sendRedirect("bandoCompraFacil/index.jsp");
		}

	private void selectCategoriaLimpeza(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomeCategoriaLimpeza = request.getParameter("imagem");
		
	    List<CompraFacilProduto> listaProduto = dao.selectCategoriaLimpeza(nomeCategoriaLimpeza);
		request.setAttribute("listaRegistro", listaProduto);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/servicoLimpeza.jsp");
		dispatcher.forward(request, response);

			
			//response.sendRedirect("bandoCompraFacil/index.jsp");
		}

	private void selectCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomeCategoria = request.getParameter("imagem");
			
	    List<CompraFacilProduto> listaProduto = dao.selectCategoria(nomeCategoria);
		request.setAttribute("listaRegistro", listaProduto);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/servicoAlimento.jsp");
		dispatcher.forward(request, response);

			
			//response.sendRedirect("bandoCompraFacil/index.jsp");
		}

	

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/loginN.jsp");
		dispatcher.forward(request, response);		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int intcodprod =Integer.parseInt(request.getParameter("intcodprod"));
		
		DaoCompraFacil dao = new DaoCompraFacil();
		
		dao.delete(intcodprod);
		
		response.sendRedirect("CompraControlador?operacao=select");

		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		CompraFacilProduto produto = new CompraFacilProduto();
		DaoCompraFacil dao = new DaoCompraFacil();
		
		produto.setCodprod(Integer.parseInt(request.getParameter("codprod")));
		produto.setNomeSupermercado(request.getParameter("nomeSupermercado"));
		produto.setCategoria(request.getParameter("categoria"));
		produto.setValorproduto(Double.parseDouble(request.getParameter("valorproduto")));
		produto.setNomeProduto(request.getParameter("nomeProduto"));
		produto.setFoto(request.getParameter("foto"));
		produto.setCodbarra(request.getParameter("codbarra"));

		
		
		dao.update(produto);
		response.sendRedirect("CompraControlador?operacao=select");


	}

	private void formUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int intcodprod = Integer.parseInt(request.getParameter("intcodprod"));
		
		List<CompraFacilProduto> listaProduto = dao.selectId(intcodprod);
		request.setAttribute("listaRegistro", listaProduto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/formUpdate.jsp");
		dispatcher.forward(request, response);
		
	}

	private void selectNome(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String nomePesquisa = request.getParameter("pesquisa");
		
		
		List<CompraFacilProduto> listaProduto = dao.selectNome(nomePesquisa);
		request.setAttribute("listaRegistro", listaProduto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/home.jsp");
		dispatcher.forward(request, response);

		
		//response.sendRedirect("bandoCompraFacil/index.jsp");
	}

	private void selectAll(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		List<CompraFacilProduto> listaProduto = dao.select();
		request.setAttribute("listaRegistro", listaProduto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("telas/home.jsp");
		dispatcher.forward(request, response);

	
	}

	private void incluiRegistro(HttpServletRequest request, HttpServletResponse response) throws IOException {
	String cpf = request.getParameter("cpf");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String rua = request.getParameter("rua");
		String cep = request.getParameter("cep");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");
		
		CompraFacil cliente = new CompraFacil();
	    cliente.setCpf(cpf);  
		cliente.setNome(nome);
		cliente.setEmail(email);
		cliente.setSenha(senha);
		cliente.setRua(rua);
		cliente.setCep(cep);
		cliente.setCidade(cidade);
		cliente.setEstado(estado);
		
		dao.insert(cliente);
		response.sendRedirect("CompraControlador?operacao=select");

}
	private void incluirProduto(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		int codprod = Integer.parseInt(request.getParameter("codprod"));
		String nomeSupermercado  = request.getParameter("nomeSupermercado");
		String categoria = request.getParameter("categoria");
		String nomeProduto = request.getParameter("nomeProduto");
		Double valorproduto = Double.parseDouble(request.getParameter("valorproduto"));
		String codbarra = request.getParameter("codbarra");
		
		
		CompraFacilProduto produto = new CompraFacilProduto();
		
		produto.setCodprod(codprod);
		produto.setNomeSupermercado(nomeSupermercado);
		produto.setCategoria(categoria);
		produto.setNomeProduto(nomeProduto);
		produto.setValorproduto(valorproduto);
		produto.setFoto(uploadFoto(request, response));
		produto.setCodbarra(codbarra);
		
		dao.insert1(produto);
		response.sendRedirect("CompraControlador?operacao=select");

	}
	// Efetua o upload do arquivo de foto
		private String uploadFoto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		// Obtem o arquivo do formulário
			Part aquivo = request.getPart("foto");

		 // Local onde será salvo o arquivo
			String diretorio = this.getServletContext().getRealPath(".");
			diretorio += "/telas/Imagens/";
			

		 // Cria o diretório caso não exista
			File fileDir = new File(diretorio);
			if (!fileDir.exists()) {
				fileDir.mkdirs();
		 }

		 // Obtem o nome do arquivo
			String nomeArquivo = aquivo.getSubmittedFileName();

		 // Grava o arquivo no disco
			aquivo.write(diretorio + nomeArquivo);

		 return nomeArquivo;
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}