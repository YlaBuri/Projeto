package br.ucsal.roteiro.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PerfilEstudante")
public class PerfilEstudanteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public PerfilEstudanteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("dashboardAdmin.jsp").forward(request, response);;
	}
}
