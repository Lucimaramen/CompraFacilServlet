package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import banco.Conexao;
import modelo.CompraFacil;
import modelo.CompraFacilProduto;

public class DaoCompraFacil {

	private Connection con;
	private Conexao conexao;
	
	public DaoCompraFacil() {
		conexao = Conexao.getInstancia();
		con = conexao.conecta();
	}
	
	//Insere um registro no banco de dados
	public void insert(CompraFacil cliente) {
		String sql = "insert into cliente (cpf,nome,email,senha,rua,cep,cidade,estado) values (?, ?, ?, ?, ?, ?, ?, ? )";
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1,cliente.getCpf());
			stmt.setString(2, cliente.getNome());
			stmt.setString(3, cliente.getEmail());
			stmt.setString(4, cliente.getSenha());
			stmt.setString(5, cliente.getRua());
			stmt.setString(6, cliente.getCep());
			stmt.setString(7,cliente.getCidade());
			stmt.setString(8, cliente.getEstado());
			
			stmt.execute();
			stmt.close();
		}catch(Exception e) {
			System.out.println("Falha na inclusão do registro.");
			System.out.println(e.getMessage());
		}
		
	}
	public void insert1(CompraFacilProduto produto) {
		String sql = "insert into produto (codprod, nomeSupermercado, categoria, nomeProduto, valorproduto, foto, codbarra) values (?, ?, ?, ?, ?, ?, ?)";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, produto.getCodprod());
			stmt.setString(2, produto.getNomeSupermercado());
			stmt.setString(3, produto.getCategoria());
			stmt.setString(4, produto.getNomeProduto());
			stmt.setDouble(5, produto.getValorproduto());
			stmt.setString(6, produto.getFoto());
			stmt.setString(7, produto.getCodbarra());
			
			stmt.execute();
			stmt.close();
		}catch(Exception e) {
			System.out.println("Falha na inclusão do registro.");
			System.out.println(e.getMessage());
		
		}
	}
	/*public void insert1(CompraFacilProduto produto) {
		String sql = "insert into produto (codprod, nomeSupermercado, categoria, nomeProduto, valorproduto, imagem, codbarra) values (?, ?, ?, ?, ?, ?, ?)";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, produto.getCodprod());
			stmt.setString(2, produto.getNomeSupermercado());
			stmt.setString(3, produto.getCategoria());
			stmt.setString(4, produto.getNomeProduto());
			stmt.setDouble(5, produto.getValorproduto());
			stmt.setString(6, produto.getImagem());
			stmt.setString(7, produto.getCodbarra());
			
			stmt.execute();
			stmt.close();
		}catch(Exception e) {
			System.out.println("Falha na inclusão do registro.");
			System.out.println(e.getMessage());
		
		}
	}
*/
			public void delete(int codprod) {
			String sql = "delete from produto where codprod = " + codprod;
			
			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.execute();
				stmt.close();
			}catch(Exception e) {
				System.out.println("Falha na exclusão do registro.");
				System.out.println(e.getMessage());
			}
			
		}
		public void update(CompraFacilProduto produto) {
			String sql = "update produto set codprod = ?, nomeSupermercado = ?, categoria = ?, nomeProduto = ?, valorproduto = ?, foto = ?, codbarra = ? where codprod = ?";
			
			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setString(1, produto.getCodbarra());
				stmt.setString(2, produto.getNomeSupermercado());
				stmt.setString(3, produto.getCategoria());
				stmt.setString(4, produto.getNomeProduto());
				stmt.setDouble(5, produto.getValorproduto());
				stmt.setString(6, produto.getFoto());
				stmt.setString(7, produto.getCodbarra());
				stmt.setInt(8, produto.getCodprod());
	            
			    stmt.execute();
			    stmt.close();
			
			}catch (Exception e) {
				System.out.println("Falha na alteração do registro.");
				System.out.println(e.getMessage());
			}
		
		}
		public List<CompraFacilProduto> selectId(int codprod){
			String sql = "SELECT * FROM produto where codprod = " + codprod;
			
			return executaSelect(sql);
			
		}
		public List<CompraFacilProduto> select(){
			  String sql = "SELECT *FROM produto";
			  return executaSelect(sql);

		}
		public List<CompraFacilProduto> selectNome(String nomeProduto){
		  String sql = "SELECT *FROM produto where nomeProduto like \"%" + nomeProduto + "%\";";
	       return executaSelect(sql);		
		}
		public List<CompraFacilProduto> selectCategoria(String Alimentos){
			  String sql = "SELECT *FROM produto where categoria = 'Alimentos'";
		       return executaSelect(sql);		
		}
		
		public List<CompraFacilProduto> selectCategoriaHigiene(String Higiene){
			  String sql = "SELECT *FROM produto where categoria = 'Higiene'";
		       return executaSelect(sql);		
	}
	    public List<CompraFacilProduto> selectCategoriaLimpeza(String Limpeza){
		      String sql = "SELECT *FROM produto where categoria = 'Limpeza'";
	           return executaSelect(sql);		
	}
		
		public List<CompraFacilProduto> executaSelect(String sql){
		List<CompraFacilProduto> listaProduto = new ArrayList<CompraFacilProduto>();
				
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
		    ResultSet rs = stmt.executeQuery();
		            
		    while(rs.next()) {
            	CompraFacilProduto p = new CompraFacilProduto();
            	p.setCodprod(rs.getInt("codprod"));
            	p.setNomeSupermercado(rs.getString("nomeSupermercado"));
            	p.setCategoria(rs.getString("categoria"));
            	p.setNomeProduto(rs.getString("nomeProduto"));
            	p.setValorproduto(rs.getDouble("valorproduto"));
            	p.setFoto(rs.getString("foto"));
            	p.setCodbarra(rs.getString("codbarra"));

            	
                listaProduto.add(p);
		    }
		        stmt.close();
		        rs.close();
		            	
		   
		}catch (Exception e) {
			System.out.println("Falha na consulta");
			System.out.println(e.getMessage());
		}	
		return listaProduto;
	}
	
	public List<CompraFacil> selectCliente(){
		String sql = "SELECT *FROM cliente;";
		List<CompraFacil> listaCliente = new ArrayList<CompraFacil>();
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()) {
            	CompraFacil a = new CompraFacil();
            	a.setCpf(rs.getString("cpf"));
            	a.setNome(rs.getString("nome"));
            	a.setEmail(rs.getString("email"));
            	a.setRua(rs.getString("rua"));
            	a.setCep(rs.getString("cep"));
            	a.setCidade(rs.getString("cidade"));
            	a.setEstado(rs.getString("estado"));
            	
            	listaCliente.add(a);
            }
            	rs.close();
            	stmt.close();
            	
            
		}catch (Exception e) {
			System.out.println("Falha na consulta");
			System.out.println(e.getMessage());
		}	
	return listaCliente;
}
}
