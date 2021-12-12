package controller.promociones;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Tipo;
import persistence.TipoDAO;
import persistence.commons.DAOFactory;
import services.PromocionService;
import utils.Crypt;

@WebServlet("/admin-promociones/crear")
public class CrearPromocionServlet extends HttpServlet implements Servlet{
	
	private static final long serialVersionUID = 1700264657831357434L;
	private PromocionService promocionService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.promocionService = new PromocionService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TipoDAO tipoDAO = DAOFactory.getTipoDAO();
		List<Tipo> tipos = tipoDAO.obtenerTodos();
		req.setAttribute("tipos", tipos);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/atracciones/crear.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//int id, String nombre, String tipoAtraccion, String tipoPromocion, int descuento,String descripcion,String imagen, Boolean activo,List<Atraccion> atracciones
		String nombre = req.getParameter("nombre");
		int tipoAtraccionId = Integer.valueOf(req.getParameter("tipoAtraccion"));
		int tipoPromocionId = Integer.valueOf(req.getParameter("tipoPromocion"));
		String descripcion = req.getParameter("descripcion");
		String imagen = req.getParameter("imagen");
		Boolean activo = true;
		
		TipoDAO tipoDAO = DAOFactory.getTipoDAO();
		Tipo tipo = tipoDAO.buscarPorId(tipoAtraccionId);
		
		//Promocion promocion = promocionService.crear(nombre,tipo,precio,tiempo,imagen,descripcion,activo);
		
//		if (promocion.esValido()) {
//			//resp.sendRedirect("/turismo/admin-usuarios/crear.do");
//			resp.sendRedirect("/turismo/admin-atracciones/crear");
//		} else {
//			req.setAttribute("usuario", usuario);
//
//			RequestDispatcher dispatcher = getServletContext()
//					.getRequestDispatcher("/views/usuarios/crear.jsp");
//			dispatcher.forward(req, resp);
//		}
		
	}


}
