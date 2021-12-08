package controller.session;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;
import services.IngresarService;
import utils.Crypt;

@WebServlet("/ingresar")
public class IngresarServlet extends HttpServlet{

	private static final long serialVersionUID = -565663089599014434L;
	private IngresarService ingresarService;

	@Override
	public void init() throws ServletException {
		super.init();
		ingresarService = new IngresarService();
	}
	
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String nombreUsuario = req.getParameter("usuario");
    	String contrasenia = req.getParameter("contrasenia");
    	
    	Usuario usuario = ingresarService.login(nombreUsuario, contrasenia);
    	
    	if (!usuario.isNull()) {
    		req.getSession().setAttribute("usuario", usuario);
    		resp.sendRedirect("index.jsp");    		
       	} else {
    		req.setAttribute("flash", "Nombre de usuario o contraseña incorrectos");
    		
    		
    		RequestDispatcher dispatcher = getServletContext()
      		      .getRequestDispatcher("/ingresar.jsp");
      		    dispatcher.forward(req, resp);
    	}
    }

}
