package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import banco.Conexao;
import modelo.CompraFacil;


public class DaoCliente {
	private Connection con;
	private Conexao conexao;
	
	public DaoCliente() {
		conexao = Conexao.getInstancia();
		con = conexao.conecta();
	}
	
	
	public List<CompraFacil> getAutenticacao(String email, String senha){
		String sql = "SELECT * FROM cliente where email = '" + email + "'"
		 + " and senha = '" + senha + "'";
		return executaSelect(sql);

}
	// Executa qualquer consulta no banco
		public List<CompraFacil> executaSelect(String sql) {
			List<CompraFacil> listaCliente = new ArrayList<CompraFacil>();
			
			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery();
				
				while(rs.next()) {
					CompraFacil c = new CompraFacil();
					
					c.setCpf(rs.getString("cpf"));
					c.setNome(rs.getString("nome"));
					c.setEmail(rs.getString("email"));
					c.setRua(rs.getString("rua"));
					c.setCep(rs.getString("cep"));
					c.setCidade(rs.getString("cidade"));
					c.setEstado(rs.getString("estado"));
					c.setSenha(rs.getString("senha"));
					
					listaCliente.add(c);
	}
				rs.close();
				stmt.close();
			}catch (Exception e) {
				System.out.println("Falha na consulta ao banco de dados");
				System.out.println(e.getMessage());
	}
	return listaCliente;
}
}