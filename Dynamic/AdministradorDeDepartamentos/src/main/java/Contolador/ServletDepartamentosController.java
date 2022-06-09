package Contolador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Departamentos;

/**
 * Servlet implementation class ServletDepartamentosController
 */
@WebServlet("/ServletDepartamentosController")
public class ServletDepartamentosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Departamentos> listDepartamentos=new ArrayList<Departamentos>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDepartamentosController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String codigo=request.getParameter("codigo");
		String departamento=request.getParameter("departamento");
		String fechac=request.getParameter("fechac");
		String fecham=request.getParameter("fecham");
		Departamentos departamentos=new Departamentos();
		departamentos.setCodigo(codigo);
		departamentos.setDepartamento(departamento);
		departamentos.setFechac(fechac);
		departamentos.setFecham(fecham);
		this.listDepartamentos.add(departamentos);
		request.setAttribute("lista", listDepartamentos);
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
