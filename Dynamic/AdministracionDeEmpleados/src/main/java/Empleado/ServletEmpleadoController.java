package Empleado;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Empleado;
/**
 * Servlet implementation class ServletEmpleadoController
 */
@WebServlet("/ServletEmpleadoController")
public class ServletEmpleadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Empleado> listEmpleado=new ArrayList<Empleado>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEmpleadoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String tipodedocumento=request.getParameter("tipodedocumento");
		String numerodedocumento=request.getParameter("numerodedocumento");
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String direcion=request.getParameter("direcion");
		String correo=request.getParameter("correo");
		String telefono=request.getParameter("telefono");
		String fechadecreacion=request.getParameter("fechadecreacion");
		String fechadeactualizacion=request.getParameter("fechadeactualizacion");
		Empleado empleado=new Empleado();
		empleado.setID(id);
		empleado.setTipodedocumento(tipodedocumento);
		empleado.setNumerodedocumento(numerodedocumento);
		empleado.setNombre(nombre);
		empleado.setApellido(apellido);
		empleado.setDirecion(direcion);
		empleado.setCorreo(correo);
		empleado.setTelefono(telefono);
		empleado.setFechadecreacion(fechadecreacion);
		empleado.setFechadeactualizacion(fechadeactualizacion);
		this.listEmpleado.add(empleado);
		request.setAttribute("lista", listEmpleado);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
