package controller.promociones;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Atraccion;
import model.Promocion;
import model.Tipo;
import persistence.AtraccionDAO;
import persistence.TipoDAO;
import persistence.commons.DAOFactory;
import services.PromocionService;

@WebServlet("/admin-promociones/modificar")
public class ModificarPromocionServlet extends HttpServlet implements Servlet{

	private static final long serialVersionUID = -5003319901104367038L;
	private PromocionService promocionService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.promocionService = new PromocionService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Promocion promocion;
		try {
			promocion = DAOFactory.getPromocionDAO().obtenerPorId(id);
			req.setAttribute("promocion", promocion);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		List<Atraccion> atracciones = atraccionDAO.obtenerTodos();
		req.setAttribute("atracciones", atracciones);
		
		
		TipoDAO tipoDAO = DAOFactory.getTipoDAO();
		List<Tipo> tipos = tipoDAO.obtenerTodos();
		req.setAttribute("tipos", tipos);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/promociones/modificar.jsp");
		dispatcher.forward(req, resp);

	}
}
