<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Responsive Footer</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    footer {
      background-color: #2c2c2c;
      color: #fff;
      padding: 20px 10%;
    }

    .footer-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .footer-column {
      flex: 1;
      min-width: 200px;
      margin: 10px;
    }

    .footer-column h3 {
      font-size: 18px;
      margin-bottom: 10px;
      color: #f3a953;
    }

    .footer-column p,
    .footer-column a {
      font-size: 14px;
      color: #ccc;
      text-decoration: none;
      margin-bottom: 8px;
      display: block;
    }

    .footer-column a:hover {
      color: #f3a953;
    }

    .social-icons {
      display: flex;
      gap: 10px;
      margin-top: 10px;
    }

    .social-icons a {
      color: #fff;
      font-size: 20px;
      text-decoration: none;
    }

    .social-icons a:hover {
      color: #f3a953;
    }

    /* Tablet View: Screens up to 768px */
    @media (max-width: 768px) {
      .footer-container {
        flex-direction: column;
        align-items: center;
        text-align: center;
      }

      .footer-column {
        margin: 20px 0;
        flex: none;
        width: 100%;
      }

      .footer-column h3 {
        font-size: 16px;
      }

      .footer-column p,
      .footer-column a {
        font-size: 12px;
      }

      .social-icons a {
        font-size: 18px;
      }
    }

    /* Mobile View: Screens up to 480px */
    @media (max-width: 480px) {
      footer {
        padding: 15px 5%;
      }

      .footer-container {
        flex-direction: column;
        gap: 10px;
      }

      .footer-column {
        flex: 1;
        width: 100%;
        margin: 10px 0;
        text-align: center;
      }

      .footer-column h3 {
        font-size: 14px;
      }

      .footer-column p,
      .footer-column a {
        font-size: 12px;
      }

      .social-icons {
        justify-content: center;
        margin: 10px 0;
      }

      .social-icons a {
        font-size: 16px;
      }
    }
  </style>
</head>
<body>

  <footer>
    <div class="footer-container">
      <!-- Company Section -->
      <div class="footer-column">
        <h3>EXAMINAUT</h3>
        <p>Examinaut is a comprehensive web-based platform
     designed to facilitate online examinations and interactive quizzes, specifically 
     tailored for academic institutions, corporate organizations, and IT professionals.</p>
      </div>

      <!-- Services Section -->
      <div class="footer-column">
        <h3>SERVICES</h3>
        <a href="#">OnlineExam</a>
        <a href="#">QuizExam</a>
        <a href="#">Secured</a> 
      </div>
      <!-- Useful Links Section -->
      <div class="footer-column">
        <h3>USEFUL LINKS</h3>
        <a href="https://www.linkedin.com/in/er-manish-kumar695179">LinkedIn</a>
        <a href="https://www.youtube.com/@IT_Wallah">YouTube</a>
        <a href="https://twitter.com/ITWallah6">Twitter</a>
        <a href="https://www.instagram.com/it_wallah6/">Intagram</a>
          <a href="https://www.facebook.com/ITWallah6/">Facebook</a>
      </div>
      
      <!-- Contact Section -->
      <div class="footer-column">
        <h3>CONTACT</h3>
        <p>Bhopal, Madhya-Pradesh, India</p>
        <p>Email: manishvishwakarma19075@gmail.com</p>
        <p>Phone: +91 123 456 7890</p>
        
        <div class="social-icons">
          <a href="#" aria-label="Facebook"></a>
          <a href="#" aria-label="Twitter"></a>
          <a href="#" aria-label="LinkedIn"></a>
          <a href="#" aria-label="YouTube"></a>
        </div>
      </div>
    </div>
    <p style="text-align: center; margin-top: 20px;">Copyright ©2024 All rights reserved | Examinaut</p>
  </footer>
</body>
</html>
