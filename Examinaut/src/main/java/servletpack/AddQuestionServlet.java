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

@WebServlet("/AddQuestions")
public class AddQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String question_text = request.getParameter("questiontext");
        String option_a = request.getParameter("optiona");
        String option_b = request.getParameter("optionb");
        String option_c = request.getParameter("optionc");
        String option_d = request.getParameter("optiond");
        String correct_option = request.getParameter("correctoption");
        RequestDispatcher dispatcher=null;
        Connection con=null;
        
        
        try {  
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examinaut?useSSL=false","root","Mannu@6619");
           
            PreparedStatement ps =con.prepareStatement( "insert into questions (question_text, option_a, option_b, option_c, option_d, correct_option) values(?, ?, ?, ?, ?, ?)");
            ps.setString(1, question_text);
            ps.setString(2, option_a);
            ps.setString(3, option_b);
            ps.setString(4, option_c);
            ps.setString(5, option_d);
            ps.setString(6, correct_option);
            int rowcount=ps.executeUpdate();
          
            dispatcher = request.getRequestDispatcher("addQuestion.jsp"); 
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


