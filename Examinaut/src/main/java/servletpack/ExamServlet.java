package servletpack;

import java.io.IOException;
import java.sql.*;
import java.util.Enumeration;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/GetExam")
public class ExamServlet extends HttpServlet {

    static {
        try {
            // Load the database driver once when the class is loaded
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Database connection variables
        String dbUrl = "jdbc:mysql://localhost:3306/examinaut";
        String dbUser = "root";
        String dbPassword = "Mannu@6619";
        
        int score = 0; // To hold the user's score
        int totalQuestions = 0; // To count the total number of questions answered

        try (
            // Establish database connection
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword)
        ) {
            Enumeration<String> parameterNames = request.getParameterNames();

            while (parameterNames.hasMoreElements()) {
                String paramName = parameterNames.nextElement();
                
                // Debugging log to print all parameter names
                System.out.println("Received parameter: " + paramName);

                if (paramName.startsWith("q")) { // Identify question parameters
                    int questionId = Integer.parseInt(paramName.substring(1));
                    String selectedOption = request.getParameter(paramName);
                    
                    // Debugging log to print selected option
                    System.out.println("Question ID: " + questionId + ", Selected Option: " + selectedOption);

                    if (selectedOption == null || selectedOption.isEmpty()) {
                        continue; // Skip if no option is selected
                    }

                    // Retrieve the correct option from the database
                    String sql = "SELECT correct_option FROM questions WHERE id = ?";
                    try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                        stmt.setInt(1, questionId);
                        
                        try (ResultSet rs = stmt.executeQuery()) {
                            if (rs.next()) {
                                String correctOption = rs.getString("correct_option");
                                totalQuestions++;

                                // Check if the selected answer is correct
                                if (selectedOption.equalsIgnoreCase(correctOption)) { // Use case-insensitive comparison
                                    score++; // Increment score for correct answer
                                }

                                // Insert the answer into the database
                                String insertSql = "INSERT INTO answers (question_id, selected_option) VALUES (?, ?)";
                                try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                                    insertStmt.setInt(1, questionId);
                                    insertStmt.setString(2, selectedOption);
                                    insertStmt.executeUpdate();
                                }
                            }
                        }
                    }
                }
            }

            // Set the score and total questions as request attributes
            request.setAttribute("score", score);
            request.setAttribute("totalQuestions", totalQuestions);

            // Forward to the result.jsp page to display the result
            RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            // Handle exceptions and send error response
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<h2>An error occurred while submitting the exam!</h2>");
            response.getWriter().println("<pre>" + e.getMessage() + "</pre>");
        }
    }
}
