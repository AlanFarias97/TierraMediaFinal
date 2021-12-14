package controller.atracciones;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Atraccion;
import model.Tipo;
import persistence.TipoDAO;
import persistence.commons.DAOFactory;
import services.AtraccionService;

@WebServlet("/productos/comprar")
public class ComprarAtraccionServlet extends HttpServlet implements Servlet{

	private static final long serialVersionUID = -7939597524495394303L;
	private AtraccionService atraccionService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.atraccionService = new AtraccionService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.valueOf(req.getParameter("id"));
		Atraccion atraccion = DAOFactory.getAtraccionDAO().obtenerPorId(id);
		req.setAttribute("atraccion", atraccion);

		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/atracciones/comprar.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		super.doPost(req, resp);
	}
	
	

}
