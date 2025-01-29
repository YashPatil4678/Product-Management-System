package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.openSession();
		
		int id = Integer.parseInt(request.getParameter("txtid"));
		
		Product p1 = session.get(Product.class ,id);
		
		String n = request.getParameter("txtname");
		float price = Float.parseFloat(request.getParameter("txtprice"));
		
		p1.setProd_name(n);
		p1.setProd_price(price);
		
		session.persist(p1);
		session.beginTransaction().commit();
		
		RequestDispatcher rd = request.getRequestDispatcher("showproduct.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
