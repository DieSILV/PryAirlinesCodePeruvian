package pe.unjfsc.daw.evalua.spring5.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import pe.unjfsc.daw.evalua.spring5.dao.CLUsuario;
import pe.unjfsc.daw.evalua.spring5.entity.CEUsuario;

@WebServlet(description = "PETICIONES DE USUARIOS", urlPatterns = { "/usuarios" })
public class CustomServlet extends HttpServlet  {

	/**
	 * 
	 */
    Logger logger = LoggerFactory.getLogger(CustomServlet.class);

	private static final long serialVersionUID = 1L;



    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String opcion = request.getParameter("opcion");
		if (opcion.equals("insertar")) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.pe");
			requestDispatcher.forward(request, response);
		} else if (opcion.equals("listar")) {
		}

		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion = request.getParameter("opcion");

		CLUsuario objClUsuario = new CLUsuario();
		CEUsuario objCeUsuario = new CEUsuario();
		objCeUsuario.setDni(request.getParameter("dni"));
		objCeUsuario.setNombre(request.getParameter("nombre"));
		objCeUsuario.setApellido(request.getParameter("apellido"));
		objCeUsuario.setCorreo(request.getParameter("correo"));
		objCeUsuario.setUsuario(request.getParameter("usuario"));
		objCeUsuario.setPassword(request.getParameter("password"));
		try {
			objClUsuario.insertar(objCeUsuario);
			System.out.println("Registro guardado satisfactoriamente...");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
			requestDispatcher.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	


	}
}
	
