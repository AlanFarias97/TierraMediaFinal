package controller.atracciones;

import java.io.IOException;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.AtraccionService;

@WebServlet("/admin-atracciones/eliminar")
public class EliminarAtraccionServlet extends HttpServlet implements Servlet{
	
	private static final long serialVersionUID = 4722417828413660861L;
	private AtraccionService atraccionService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.atraccionService = new AtraccionService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		atraccionService.eliminar(id);

		resp.sendRedirect("/turismo/admin-atracciones");
	}

	
}
