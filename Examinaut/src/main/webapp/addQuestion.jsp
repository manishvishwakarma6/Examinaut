<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add or Remove Questions</title>
    <style>


/* Form Container */
form {
    max-width:800px;
    margin: 40px auto;
    padding: 10px;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Form Elements */
form label {
    font-weight: bold;
    margin-bottom: 5px;
    display: block;
}

form input[type="text"],
form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 2px solid black;
    border-radius: 4px;
    font-size: 14px;
    box-sizing: border-box;
}

form textarea {
    resize: vertical;
}

/* Button Styling */
form button {
    display: inline-block;
   background-color: #1B8FFF;
    color: white;
    padding: 10px 15px;
    font-size: 16px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form button:hover {
    background-color: #45a049;
}

/* Headings */
h2 {
    text-align: center;
    margin-top: 75px;
    color: #333;
}
  
    </style>
</head>
<body>
<%@include file="includes/navbar.jsp"%>
    <h2>Add a Question</h2>
    <form action="AddQuestions" method="post">
        <label>Question:</label><br>
        <textarea name="questiontext" rows="4" cols="50" required></textarea><br>
        <label>Option A:</label><br>
        <input type="text" name="optiona" required><br>
        <label>Option B:</label><br>
        <input type="text" name="optionb" required><br>
        <label>Option C:</label><br>
        <input type="text" name="optionc" required><br>
        <label>Option D:</label><br>
        <input type="text" name="optiond" required><br>
        <label>Correct Option:</label><br>
        <input type="text" name="correctoption" maxlength="1" required><br><br>
        <button type="submit">Add Question</button>
       
  </form>


    <%@include file="includes/footer.jsp"%>
</body>
</html>
