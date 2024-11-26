package servletpack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/contact")
public class contactservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String firstname = request.getParameter("fname");
	        String lastname = request.getParameter("lname");
	        String email = request.getParameter("email");
	        String mobile = request.getParameter("number");
	        String message = request.getParameter("message");
	        RequestDispatcher dispatcher=null;
	        Connection con=null;
	        
	        if(email == null || email.equals("")){
	        	request.setAttribute("status", "invalidEmail");
	        	dispatcher = request.getRequestDispatcher("contactcontact.jsp");
	        	dispatcher.forward(request,response);
	        }
	        if(mobile == null || mobile.equals("")){
	        	request.setAttribute("status", "invalidEMobile");
	        	dispatcher = request.getRequestDispatcher("contact.jsp");
	        	dispatcher.forward(request,response);
	        }
	        else if(mobile.length() >10)
	        {
	        	request.setAttribute("status", "invalidEMobileLength");
	        	dispatcher = request.getRequestDispatcher("contact.jsp");
	        	dispatcher.forward(request,response);
	        }
	        try {  
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examinaut?useSSL=false","root","Mannu@6619");
	           
	            PreparedStatement ps =con.prepareStatement( "insert into contact (firstname, lastname, email, mobile, message) values(?, ?, ?, ?,?)");
	            ps.setString(1, firstname);
	            ps.setString(2, lastname);
	            ps.setString(3, email);
	            ps.setString(4, mobile);
	            ps.setString(5, message);
	            int rowcount=ps.executeUpdate();
	            dispatcher = request.getRequestDispatcher("login.jsp"); 
	            if (rowcount > 0) {
	            	request.setAttribute("status", "success");
	            } 
	            else {
	                 request.setAttribute("status", "failed");
	            }
	            dispatcher.forward(request,response);       
	        }
	             catch (Exception e) 
	        {
	            e.printStackTrace();
	        } 
	        finally {
	        	try {
	        	con.close();
	        }
	        	catch(SQLException e)
	        	{
	        		e.printStackTrace();
	        	}
	        }
	       }
		}


