package controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.BanqueLocal;
import metier.entities.Compte;

/**
 * Servlet implementation class BanqueServlet
 */
@WebServlet("/BanqueServlet")
public class BanqueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @EJB
    private BanqueLocal bl;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BanqueServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Ajout avec succès du Compte");
		getServletContext().getRequestDispatcher("/CompteServlet").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String solde = request.getParameter("solde");
		Compte c = new Compte(Double.parseDouble(solde));
		bl.addCompte(c);
		doGet(request,response);
	}

}
