package facade;

import java.util.List;

import modelo.Empleado;

public interface IEmpleado {

	public interface interfazEmpleado{
		public List<Empleado> findALL();
		
		public Empleado listEmpleados(long id);
		
		public boolean add(Empleado empleado);
		
		public boolean eliminar(long id);
	}
	}
