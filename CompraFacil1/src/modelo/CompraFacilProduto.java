package modelo;

public class CompraFacilProduto {

	int id;
	int codprod;
	String nomeSupermercado;
	String categoria;
	String nomeProduto;
	Double valorproduto;
	String foto;
	String codbarra;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getCodprod() {
		return codprod;
	}
	public void setCodprod(int codprod) {
		this.codprod = codprod;
	}
	public String getNomeSupermercado() {
		return nomeSupermercado;
	}
	public void setNomeSupermercado(String nomeSupermercado) {
		this.nomeSupermercado = nomeSupermercado;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getNomeProduto() {
		return nomeProduto;
	}
	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}
	public Double getValorproduto() {
		return valorproduto;
	}
	public void setValorproduto(Double valorproduto) {
		this.valorproduto = valorproduto;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public String getCodbarra() {
		return codbarra;
	}
	public void setCodbarra(String codbarra) {
		this.codbarra = codbarra;
	}
}
