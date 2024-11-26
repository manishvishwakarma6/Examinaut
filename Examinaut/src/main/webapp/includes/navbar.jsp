<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Examinaut :</title>
  <style>
    /* General Styles */
    body {
      margin: 0;
      font-family: Arial, sans-serif;
    }

    /* Navbar Styles */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: #007bff;
      padding: 10px 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    .navbar .logo {
      display: flex;
      align-items: center;
      color:white;
      font-size:25px;
    }

    .navbar .logo img {
      height: 40px;
      margin-right: 10px;
    }

    .navbar .nav-links {
      display: flex;
      gap: 20px;
    }

    .navbar .nav-links a {
      text-decoration: none;
      color: white;
      font-size: 20px;
      transition: color 0.3s;
    }

    .navbar .nav-links a:hover {
      color: #e74d06;
    }

    /* Hamburger Menu */
    .hamburger {
      display: none;
      flex-direction: column;
      gap: 5px;
      cursor: pointer;
    }

    .hamburger span {
      width: 25px;
      height: 3px;
      background-color: #333;
    }

    /* Mobile and Tablet Styles */
    @media (max-width: 768px) {
      .navbar .nav-links {
        display: none;
        flex-direction: column;
        position: absolute;
        top: 60px;
        right: 20px;
        background: #007bff;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 10px;
        border-radius: 5px;
      }

      .navbar .nav-links.active {
        display: flex;
      }

      .hamburger {
        display: flex;
      }
    }

    @media (max-width: 480px) {
      .navbar .nav-links a {
        font-size: 14px;
      }

      .navbar {
        padding: 10px;
      }

      .navbar .logo img {
        height: 30px;
      }
    }
  </style>
</head>
<body>
  <!-- Transparent Navbar -->
  <div class="navbar">
    <div class="logo">
      <img src="img/logo.png" alt="Examinaut"> Examinaut
    </div>
    <div class="nav-links">
      <a href="index.jsp">Home</a>
      <a href="addQuestion.jsp">Add Questions</a>
      <a href="exam.jsp">Get Exam</a>
       <a href="result.jsp">Result</a>
      <a href="about.jsp">About Us</a>
      <a href="contact.jsp">Contact</a>
      <a href="login.jsp">SignIn/SignUp</a>
    </div>
    <div class="hamburger">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>

  <script>
    // Hamburger Menu Toggle
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');

    hamburger.addEventListener('click', () => {
      navLinks.classList.toggle('active');
    });
  </script>
</body>
</html>
