<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}
%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online Exam</title>
    <style>
/* Header Styling */
h1 {
    text-align: center;
    color: black;
    padding: 5px 0;
    margin-top:75px;
    margin-bottom: 5px;
    border-radius: 5px 4px 0 0;
}

/* Form Container */
form {
    max-width:1000px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

/* Question Block */
form div {
    margin-bottom: 20px;
    padding: 10px;
    background-color: #f9f9fb;
    border: 2px solid black;
    border-radius: 5px;
}

/* Question Text */
form div p {
    margin: 0;
    font-weight: bold;
    color: #2d3748;
}

/* Options */
form input[type="radio"] {
    margin-right: 10px;
}

form div label {
    display: block;
    margin: 5px 0;
    color: #4a5568;
}

/* Submit Button */
form input[type="submit"] {
    display: block;
    width: 15%;
    padding: 10px;
    background-color: #1B8FFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

form input[type="submit"]:hover {
    background-color: #434aa1;
}
    
    </style>
</head>
<body>
<%@include file="includes/navbar.jsp"%>
    <h1>MCQ Exam</h1>
    <form action="GetExam" method="POST">
        <%
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examinaut", "root", "Mannu@6619");

                String sql = "SELECT * FROM questions";
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("id");
                    String question = rs.getString("question_text");
                    String optionA = rs.getString("option_a");
                    String optionB = rs.getString("option_b");
                    String optionC = rs.getString("option_c");
                    String optionD = rs.getString("option_d");
        %>
                    <div>
                        <p><%= question %></p>
                        <input type="radio" name="q<%= id %>" value="A" required> <%= optionA %><br>
                        <input type="radio" name="q<%= id %>" value="B" required> <%= optionB %><br>
                        <input type="radio" name="q<%= id %>" value="C" required> <%= optionC %><br>
                        <input type="radio" name="q<%= id %>" value="D" required> <%= optionD %><br>
                    </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
        <input type="submit" value="Submit exam">
    </form>
    <%@include file="includes/footer.jsp"%>
</body>
</html>
