<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Contact Us Page Design using Html CSS</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
   <style>
   
   *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
#section-wrapper{
    margin-top:10px;
    width: 100%;
    padding: 10px;
}
.box-wrapper{
    position: relative;
    display: table;
    width:1100px;
    margin:auto;
    border-radius: 30px;
}
.info-wrap{
    width:35%;
    height: 551px;
    padding: 40px;
    float: left;
    display: block;
    border-radius: 30px 0px 0px 30px;
    background: linear-gradient(144deg, rgba(126,39,156,1) 0%, rgba(49,39,157,1) 49%);
    color: #fff;
}
.info-title{
    text-align: left;
    font-size: 28px;
    letter-spacing: 0.5px;
}
.info-sub-title{
    font-size: 18px;
    font-weight: 300;
    margin-top: 17px;
    letter-spacing: 0.5px;
    line-height: 26px;
}
.info-details {
    list-style: none;
    margin: 60px 0px;
}
.info-details li {
    margin-top: 25px;
    font-size: 18px;
    color: #fff;
}
.info-details li i {
    background: #F44770;
    padding: 12px;
    border-radius: 50%;
    margin-right: 5px;
}
.info-details li a {
    color: #fff;
    text-decoration: none;
}
.info-details li a:hover {
    color: #F44770;
}
.social-icons {
    list-style: none;
    text-align: center;
    margin: 20px 0px;
}
.social-icons li {
    display: inline-block;
}
.social-icons li i {
    background: #F44770;
    color: #fff;
    padding: 15px;
    font-size: 20px;
    border-radius: 22%;
    margin: 0px 5px;
    cursor: pointer;
    transition: all .5s;
}
.social-icons li i:hover {
    background: #fff;
    color: #000000;
}
.form-wrap{
    width:65%;
    float: right;
    padding:40px 25px 35px 25px;
    border-radius: 0px 30px 30px 0px;
    background: #ecf0f3;
}
.form-title{
    text-align: left;
    margin-left: 23px;
    font-size: 28px;
    letter-spacing: 0.5px;
}
.form-fields{
    display: table;
    width: 100%;
    padding: 15px 5px 5px 5px;
}
.form-fields input,
.form-fields textarea{
    border: none;
    outline:none;
    background: none;
    font-size: 18px;
    color:#555;
    padding: 20px 10px 20px 5px;
    width:100%
}
.form-fields textarea{
    height: 150px;
    resize: none;
}
.form-group{
    width: 46%;
    float: left;
    padding: 0px 30px;
    margin: 14px 12px;
    border-radius: 25px;
    box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #ffffff;
}
.form-fields .form-group:last-child {
    width: 96%;
}
.submit-button{
    width: 96%;
    height: 60px;
    margin: 0px 12px;
    border-radius: 30px;
    font-size: 20px;;
    font-weight: 700;
    outline: none;
    border:none;
    cursor: pointer;
    color:#fff;
    text-align: center;
    background: #F44770;
    box-shadow: 3px 3px 8px #b1b1b1, -3px -3px 8px #ffffff;
    transition: .5s;
}
.submit-button:hover{
    background: #31279d;
}


/* Responsive css */

@media only screen and (max-width: 767px) {
    .box-wrapper{
        width: 100%;
    }
    .info-wrap,
    .form-wrap{
        width: 100%;
        height: inherit;
        float: none;  
    }
    .info-wrap{
        border-radius: 30px 30px 0px 0px;
    }
    .form-wrap{
        border-radius: 0px 0px 30px 30px;
    }
    .form-group{
        width: 100%;
        float: none;
        margin: 25px 0px;
    }
    .form-fields .form-group:last-child, 
    .submit-button{
        width: 100%;
    }
    .submit-button{
        margin: 10px 0px;
    }
   
}
   </style>
</head>
<body>
<%@include file="includes/navbar.jsp"%>
    <section id="section-wrapper">
        <div class="box-wrapper">
            <div class="info-wrap">
                <h2 class="info-title">Contact Information</h2>
                <h3 class="info-sub-title">Fill up the form and our Team will get back to you within 24 hours</h3>
                <ul class="info-details">
                    <li>
                        <i class="fas fa-phone-alt"></i>
                        <span>Phone:</span> <a href="tel:+ 1235 2355 98">+91 123 456 7890</a>
                    </li>
                    <li>
                        <i class="fas fa-paper-plane"></i>
                        <span>Email:</span> <a href="manishvishwakarma19075@gmail.com">manishvishwakarma19075@gmail.com</a>
                    </li>
                    <li>
                        <i class="fas fa-globe"></i>
                        <span>LinkedIn:</span> <a href="https://www.linkedin.com/in/er-manish-kumar695179">https://www.linkedin.com/in/er-manish-kumar695179</a>
                    </li>
                </ul>
                <ul class="social-icons"> 
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                     <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                </ul>
            </div>
            <div class="form-wrap">
                <form action="contact" method="post">
                    <h2 class="form-title">Send us a message</h2>
                    <div class="form-fields">
                        <div class="form-group">
                            <input type="text" name="fname" class="fname" placeholder="First Name" required="required">
                        </div>
                        <div class="form-group">
                            <input type="text" name="lname" class="lname" placeholder="Last Name">
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="email" placeholder="Mail" required="required">
                        </div>
                        <div class="form-group">
                            <input type="number" name="number" class="phone" placeholder="Phone">
                        </div>
                        <div class="form-group">
                            <textarea name="message"  id="" placeholder="Write your message" required="required"></textarea>
                        </div>
                    </div>
                    <input type="submit" value="Send Message" class="submit-button">
                </form>
            </div>
        </div>
    </section>
    	<%@include file="includes/footer.jsp"%>
</body>
</html>