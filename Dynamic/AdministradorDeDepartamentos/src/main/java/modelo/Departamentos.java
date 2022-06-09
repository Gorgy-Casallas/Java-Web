package modelo;

public class Departamentos {
	
	private String codigo;
	private String departamento;
	private String fechac;
	private String fecham;
	public Departamentos(String codigo, String departamento, String fechac, String fecham) {
		super();
		this.codigo = codigo;
		this.departamento = departamento;
		this.fechac = fechac;
		this.fecham = fecham;
	}
	public Departamentos() {
		// TODO Auto-generated constructor stub
	}	
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	public String getFechac() {
		return fechac;
	}
	public void setFechac(String fechac) {
		this.fechac = fechac;
	}
	public String getFecham() {
		return fecham;
	}
	public void setFecham(String fecham) {
		this.fecham = fecham;
	}
	
	

}
