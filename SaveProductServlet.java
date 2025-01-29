package com.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class SaveProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SaveProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String n = request.getParameter("txtname");
		float s = Float.parseFloat(request.getParameter("txtprice"));
		
		Configuration con=new Configuration();
		con.configure("hibernate.cfg.xml");
		
		SessionFactory factory = con.buildSessionFactory();
		Session sess =factory.openSession();
		
		Product p1 = new Product(n,s);
		sess.persist(p1);
		Transaction transaction =sess.beginTransaction();
		transaction.commit();
		//System.out.println("Record added");	
		response.sendRedirect("showproduct.jsp");
		//RequestDispatcher rd = request.getRequestDispatcher("showproduct.jsp");
		//rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
