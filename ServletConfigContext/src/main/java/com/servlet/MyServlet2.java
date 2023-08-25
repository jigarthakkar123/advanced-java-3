package com.servlet;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ServletConfig config;
	ServletContext context;
	String email,driver;
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init called");
		this.config=config;
		this.context=config.getServletContext();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		email=config.getInitParameter("email");
		System.out.println("EMail : "+email);
		PrintWriter out=response.getWriter();
		out.println("Email : "+email);
		
		driver=context.getInitParameter("driver");
		System.out.println("Driver : "+driver);
		out.println("Driver : "+driver);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	public void destroy() {
		System.out.println("Destroy Called");
	}
}
