package Modelo;

public class Empleado {

	private String id;
	private String tipodedocumento;
	private String numerodedocumento;
	private String nombre;
	private String apellido;
	private String direcion;
	private String correo;
	private String telefono;
	private String fechadecreacion;
	private String fechadeactualizacion;
	public Empleado(String id, String tipodedocumento, String numerodedocumento, String nombre, String apellido,
			String direcion, String correo, String telefono, String fechadecreacion, String fechadeactualizacion) {
		super();
		this.id = id;
		this.tipodedocumento = tipodedocumento;
		this.numerodedocumento = numerodedocumento;
		this.nombre = nombre;
		this.apellido = apellido;
		this.direcion = direcion;
		this.correo = correo;
		this.telefono = telefono;
		this.fechadecreacion = fechadecreacion;
		this.fechadeactualizacion = fechadeactualizacion;
	}
	public Empleado() {
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setID(String id) {
		this.id = id;
	}
	public String getTipodedocumento() {
		return tipodedocumento;
	}
	public void setTipodedocumento(String tipodedocumento) {
		this.tipodedocumento = tipodedocumento;
	}
	public String getNumerodedocumento() {
		return numerodedocumento;
	}
	public void setNumerodedocumento(String numerodedocumento) {
		this.numerodedocumento = numerodedocumento;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDirecion() {
		return direcion;
	}
	public void setDirecion(String direcion) {
		this.direcion = direcion;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getFechadecreacion() {
		return fechadecreacion;
	}
	public void setFechadecreacion(String fechadecreacion) {
		this.fechadecreacion = fechadecreacion;
	}
	public String getFechadeactualizacion() {
		return fechadeactualizacion;
	}
	public void setFechadeactualizacion(String fechadeactualizacion) {
		this.fechadeactualizacion = fechadeactualizacion;
	}
	
	
	
	
	
	
	
	
}
