<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
           
            #about-section {
                width: 100%;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px 8%;
            }
            .about-left img{
                width: 420px;
                height: auto;
                transform: translateY(50px);
            }
            .about-right {
                width: 54%;
                margin-top:50px;
            }

            .about-right ul li {
                display: flex;
                align-items: center;
            }

            .about-right h1 {
                color: #e74d06;
                font-size: 37px;
                margin-bottom: 5px;
            }

            .about-right p {
                color: #444;
                line-height: 26px;
                font-size: 15px;
            }

            .about-right .expertise ul {
                width: 80%;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .expertise h3 {
                margin-bottom: 10px;
            }

            .expertise .expertise-logo {
                font-size: 19px;
                margin-right: 10px;
                color: #e74d06;
            }
/* Tablet responsiveness */
@media (max-width: 768px) {
    #about-section {
        flex-direction: column;
        align-items: center;
        padding: 10px;
    }

    .about-left, .about-right {
        width: 100%; /* Full width for tablet and below */
        margin-bottom: 15px;
    }

    .expertise ul {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .expertise li {
        width: 45%; /* Two items per row */
        text-align: center;
    }

    .expertise-logo {
        font-size: 20px;
    }

    .expertise p {
        font-size: 14px;
    }
}

/* Mobile responsiveness */
@media (max-width: 480px) {
    .about-left, .about-right {
        width: 100%; /* Full width for mobile */
        margin-bottom: 10px;
    }

    .expertise ul {
        display: block;
        text-align: center;
    }

    .expertise li {
        width: 100%; /* One item per row */
        margin-bottom: 10px;
    }

    .expertise-logo {
        font-size: 18px;
    }

    .expertise p {
        font-size: 12px;
    }

    .about-right h1 {
        font-size: 24px; /* Adjust font size for mobile */
    }

    .about-right h4 {
        font-size: 18px; /* Adjust font size for mobile */
    }

    .about-right p {
        font-size: 14px; /* Adjust font size for mobile */
    }
}
                           
        </style>
    </head>

    <body>
    
    <%@include file="includes/navbar.jsp"%>
    
        <section id="about-section">
            <!-- about left  -->
            <div class="about-left">
                <img src="img/aboutus.jpg" alt="About Img"/>
            </div>

            <!-- about right  -->
            <div class="about-right">
                <h4>Examinaut</h4>
                <h1>About Project</h1>
                <p>The development of Examinaut involves designing and implementing user
                 interfaces for the Home Page, Login/Register (for Admin, Company, and 
                 Students), Exam/Quizzes Page, Result Page, Services, and Contact Page. 
                 These interfaces are interconnected with the server and database to ensure 
                 seamless functionality. Unlike existing platforms that offer limited exam 
                 and quiz options across different domains, Examinaut focuses exclusively on 
                 IT-related assessments. It allows companies to upload their own questions 
                 and answers, fostering a collaborative knowledge-sharing environment. Users 
                 can gain knowledge, resolve queries, and contribute to the global knowledge 
                 base through this platform.
                </p>
                <div class="expertise">
                    <h3>Used Technologies</h3>
                    <ul>
                        <li>
                            <span class="expertise-logo">
                                <i class="fab fa-html5"></i>
                            </span>
                            <p>HTML</p>
                        </li>
                        <li>
                            <span class="expertise-logo">
                                <i class="fab fa-css3-alt"></i>
                            </span>
                            <p>CSS</p>
                        </li>
                        <li>
                            <span class="expertise-logo">
                                <i class="fab fa-node-js"></i>
                            </span>
                            <p>Java Script</p>
                        </li>
                        <li>
                            <span class="expertise-logo">
                                <i class="fab fa-java"></i>
                            </span>
                            <p>Java</p>
                        </li>
                         <li>
                            <span class="expertise-logo">
                                <i class="fab fa-dbms"></i>
                            </span>
                            <p>Mysql</p>
                        </li>
                    </ul>
                </div>
            
            </div>
        </section>
        <%@include file="includes/footer.jsp"%>
    </body>

</html>

