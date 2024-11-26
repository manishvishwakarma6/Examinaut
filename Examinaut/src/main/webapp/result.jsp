<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exam Results</title>
    <style>
    body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f7fb;
        }
        
        .result {
          margin-top: 50px;
          margin-bottom: 50px;
            background-color:yellow; /* Bright yellow background */
            color: #fff; /* White text */
            padding: 30px;
            border-radius: 10px;
            border: 2px solid red; /* Orange border */
            display: inline-block;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        
        .result:hover {
            transform: scale(1.05);
        }
        
        .result h2 {
        font-size:50px;
            color:#007bff;
        }

        .result p {
        margin:8px;
            font-size: 33px;
            color: #333;
        }

        .result a {
            text-decoration: none;
            color: #ff5722; /* Orange link color */
            font-weight: bold;
            margin-top: 20px;
            display: inline-block;
            padding: 10px 15px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .result a:hover {
            background-color: blue;
            color: #eef5ff;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .result {
                width: 80%;
                padding: 20px;
            }

            .result h2 {
                font-size: 24px;
            }

            .result p {
                font-size: 16px;
            }
        }

        @media (max-width: 480px) {
            .result {
                width: 95%;
                padding: 15px;
            }

            .result h2 {
                font-size: 20px;
            }

            .result p {
                font-size: 14px;
            }

            .result a {
                font-size: 14px;
                padding: 8px 12px;
            }
        }
    </style>
</head>
<body>
<%@include file="includes/navbar.jsp"%>
  <div class="result">
    <h2>Exam Result</h2>
    <p>Your total score is: <%= request.getAttribute("score") %> / <%= request.getAttribute("totalQuestions") %></p>
    <p>Good Luck!</p>
    <a href="exam.jsp">Take the exam again</a>
</div>


<%@include file="includes/footer.jsp"%>
</body>
</html>
