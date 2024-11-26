package servletpack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String Reupwd = request.getParameter("re_pass");
        String umobile = request.getParameter("contact");
        RequestDispatcher dispatcher=null;
        Connection con=null;
        
        if(uname == null || uname.equals("")){
        	request.setAttribute("status", "invalidName");
        	dispatcher = request.getRequestDispatcher("registration.jsp");
        	dispatcher.forward(request,response);
        }
        if(uemail == null || uemail.equals("")){
        	request.setAttribute("status", "invalidEmail");
        	dispatcher = request.getRequestDispatcher("registration.jsp");
        	dispatcher.forward(request,response);
        }
        if(upwd == null || upwd.equals("")){
        	request.setAttribute("status", "invalidPassword");
        	dispatcher = request.getRequestDispatcher("registration.jsp");
        	dispatcher.forward(request,response);
        }
        else if(!upwd.equals(Reupwd)) {
        	request.setAttribute("status", "invalidConfirmPassword");
        	dispatcher = request.getRequestDispatcher("registration.jsp");
        	dispatcher.forward(request,response);
        }
        if(umobile == null || umobile.equals("")){
        	request.setAttribute("status", "invalidEMobile");
        	dispatcher = request.getRequestDispatcher("registration.jsp");
        	dispatcher.forward(request,response);
        }
        else if(umobile.length() >10)
        {
        	request.setAttribute("status", "invalidEMobileLength");
        	dispatcher = request.getRequestDispatcher("registration.jsp");
        	dispatcher.forward(request,response);
        }
        try {  
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examinaut?useSSL=false","root","Mannu@6619");
           
            PreparedStatement ps =con.prepareStatement( "insert into users (uname, upwd, uemail, umobile) values(?, ?, ?, ?)");
            ps.setString(1, uname);
            ps.setString(2, upwd);
            ps.setString(3, uemail);
            ps.setString(4, umobile);
            
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


