<!DOCTYPE html> 
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Smart Exam</title>
  <link rel="stylesheet" href="styles.css">
  <style>
.hero {
  margin-top:5px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
  background: #eef5ff;
}

.hero-content {
  max-width: 50%;
}

.hero-content h1 {
  font-size: 36px;
  margin-bottom: 20px;
}

.hero-content span {
  color: #007bff;
}
 .button {
      padding: 10px 20px;
      font-size: 18px;
      font-weight: bold;
      color: #fff;
      background-color: #007bff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s ease;
      text-decoration: none;
    }

    .button:hover {
      background-color: #0056b3;
      transform: scale(1.05);
    }

    .button:active {
      background-color: #003d80;
      transform: scale(0.98);
    }

.hero-image {
  max-width: 40%;
  border-radius: 10px;
}

.container {
  text-align: left;  
}

.animated-button {
  padding: 15px 30px;
  font-size: 18px;
  font-weight: bold;
  color: white;
  background-color: #007bff;
  border: none;
  border-radius: 50px;
  cursor: pointer;
  outline: none;
  transition: background-color 0.3s ease, transform 0.3s ease;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.animated-button:hover {
  background-color: #0056b3;
  transform: translateX(-3px);
}

.animated-button:active {
  background-color: #003d80;
  transform: translateX(1px);
}

.hidden {
  display: none;
  margin-top: 20px;
  font-size: 16px;
  color: #555;
  animation: fadeIn 0.5s ease-in-out;
}

@keyframes fadeOut {
  from {
    opacity: 0;
    transform: translateX(-10px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

.features-section {
  text-align: center;
  padding: 40px 20px;
}

.features-section h1 {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
  color: #333;
}

.features-section .description {
  font-size: 16px;
  color: #555;
  margin-bottom: 30px;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  max-width: 1000px;
  margin: 0 auto;
}

.feature-item {
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  text-align: center;
}

.feature-item img {
  max-width: 150px;
  margin-bottom: 15px;
}

.feature-item h3 {
  font-size: 18px;
  color: #007bff;
  margin-bottom: 10px;
}

.feature-item p {
  font-size: 14px;
  color: #555;
}



.stats-section {
  text-align: center;
  padding: 40px 20px;
  background-color: #f9fafb;
}

.stats-section h2 {
  font-size: 20px;
  color: #333;
  margin-bottom: 20px;
}

.stats-section .highlight {
  font-weight: bold;
  color: #007bff;
}

.stats-container {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 30px;
}

.stat-item {
  text-align: center;
}

.stat-item h3 {
  font-size: 24px;
  color: #333;
  margin: 0;
}

.stat-item p {
  font-size: 14px;
  color: #555;
  margin: 5px 0 0;
}

.divider {
  height: 50px;
  width: 1px;
  background-color: #ddd;
}



/* Responsive Media Queries */

/* Tablet devices */
@media (max-width: 768px) {
  
  .stats-container {
    flex-direction: column;
    align-items: center;
  }

  .stat-item {
    margin-bottom: 20px;
  }
}

/* Mobile devices */
@media (max-width: 480px) {
  /* Adjust the Hero Section */
  

  /* Stats Section */
  .stats-section h2 {
    font-size: 18px;
  }

  .stat-item h3 {
    font-size: 20px;
  }

  .stat-item p {
    font-size: 12px;
  }

  /* Adjust the Grid Layout for Small Screens */
  .features-grid {
    grid-template-columns: 1fr;
    gap: 15px;
  }

  .stat-item {
    margin-bottom: 10px;
  }
}

  </style>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>

  <section class="hero">
    <div class="hero-content">
      <h1>Online Virtual Exams<br>With Our <span>Examinaut</span></h1>
      <div class="container">
    <button class="animated-button" onclick="showMoreText()">More Details</button>
    <p id="hidden-text" class="hidden"> Examinaut is a comprehensive web-based platform
     designed to facilitate online examinations and interactive quizzes, specifically tailored 
     for academic institutions, corporate organizations, and IT professionals. The project aims
      to bridge the gap between traditional assessment methods and modern digital requirements 
      by providing a secure, scalable,  and user-friendly environment for conducting various 
      types of evaluations.</p>
  </div>
    </div>
    <img src="img/home.jpg" alt="Person Image" class="hero-image">
  </section>

<section class="features-section">
    <h1>Everything you need to create and conduct comprehensive exams</h1>
    <p class="description">
      We simplify all the moving pieces so you can administer your exams securely and with confidence without technical complexity.
    </p>
    <div class="features-grid">
      <div class="feature-item">
        <img src="img/home1.jpg" alt="PDF Icon">
        <h3>Create an exam in minutes</h3>
        <p>Design exams effortlessly with our innovative platform. Create tailored quizzes 
        or tests in minutes, customizing questions, formats, and difficulty levels to suit
         your needs. Save time with pre-built templates and automated tools for a seamless
          experience. Simplify exam creation while maintaining precision and quality. Your 
          ultimate assessment solution awaits!</p>
      </div>
      <div class="feature-item">
        <img src="img/home2.png" alt="Empower Students Icon">
        <h3>Empower every student</h3>
        <p>Unlock potential and inspire success with tools designed to empower every student. 
        Foster creativity, build confidence, and cultivate lifelong learning. Support diverse 
        needs with inclusive resources and personalized pathways. Together, we can create 
        opportunities, break barriers, and enable every learner to thrive in a world full of 
        possibilities.</p>
      </div>
      <div class="feature-item">
        <img src="img/home3.jpg" alt="Prevent Cheating Icon">
        <h3>Prevent cheating</h3>
        <p>Ensure exam integrity with smart solutions to prevent cheating. Utilize secure 
        online platforms, AI monitoring, and randomized question sets. Implement strict
         proctoring measures, time controls, and identity verification. Promote honesty 
         with clear guidelines and ethical awareness. Safeguard assessments while fostering 
         trust and fairness in every testing environment.</p>
      </div>
      <div class="feature-item">
        <img src="img/home4.jpg" alt="Collect Exams Icon">
        <h3>Collect the exams your way</h3>
        <p>Streamline exam collection with flexible options tailored to your needs. Choose 
        digital submissions, automated uploads, or traditional paper formats. Organize
         responses effortlessly with customizable sorting and tracking features. Simplify 
         the process while maintaining control and efficiency. Collect exams your way, 
         ensuring a smooth and stress-free experience for everyone.</p>
      </div>
      <div class="feature-item">
        <img src="img/home5.jpg" alt="Auto-mark Exams Icon">
        <h3>Auto-mark your exams</h3>
        <p>Save time and boost efficiency with automated exam marking. Instantly grade 
        multiple-choice, fill-in-the-blank, and more using advanced AI tools. Customize 
        grading criteria and receive accurate results in seconds. Focus on meaningful 
        feedback while reducing manual effort. Auto-mark your exams for a faster, smarter,
         and hassle-free assessment process.</p>
      </div>
      <div class="feature-item">
        <img src="img/home6.png" alt="Auto-mark Exams Icon">
        <h3>Auto-mark your exams</h3>
        <p>based on rules you've set or choose to mark manualTransform grading with 
        auto-marking technology. Automatically assess multiple-choice, true/false, and 
        short-answer questions with precision and speed. Save hours of manual work, reduce 
        errors, and ensure consistent results. Customize scoring rules to fit your needs, 
        letting you focus on meaningful insights. Auto-mark your exams for a seamless grading 
        experience."ly.</p>
      </div>
    </div>
  </section>

<section class="stats-section">
    <h2>Trusted by over <span class="highlight">25 000</span> Teachers and Company's across the India</h2>
    <div class="stats-container">
      <div class="stat-item">
        <h3>20 000+</h3>
        <p>Schools</p>
      </div>
      <div class="divider"></div>
      <div class="stat-item">
        <h3>10000+</h3>
        <p>Universities</p>
      </div>
      <div class="stat-item">
        <h3>5000+</h3>
        <p>Company's</p>
      </div>
      <div class="divider"></div>
      <div class="stat-item">
        <h3>5 million</h3>
        <p>Exams started</p>
      </div>
    </div>
  </section>
  <script>
    function showMoreText() {
      const text = document.getElementById('hidden-text');
      text.classList.toggle('hidden');
    }
  </script>

	<%@include file="includes/footer.jsp"%>
</body>
</html>