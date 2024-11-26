<%@page import="servletpack.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign in</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<%@include file="includes/navbar.jsp"%>

<!-- Hidden status value -->
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>" >

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name">
								<i class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" required="required" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required="required" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required="required" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required="required" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service" required="required" >Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="img/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
    // Get the status value from the hidden input
    var status = document.getElementById("status").value;

    // Display SweetAlert based on the status
    if(status == "failed") {
        swal({
            title: "Sorry!",
            text: "Invalid username or password",
            icon: "error", // You can use 'error' or use a custom image below
            button: "Try Again",
        });
    } 
    if(status == "invalidName") {
        swal({
            title: "Sorry!",
            text: "Please enter a valid username",
            icon: "warning", // You can choose warning icon or custom image
            button: "OK",
        });
    }
    if(status == "invalidEmail") {
        swal({
            title: "Sorry!",
            text: "Please enter a valid Email",
            icon: "warning", // You can choose warning icon or custom image
            button: "OK",
        });
    }
    if(status == "invalidPassword") {
        swal({
            title: "Sorry!",
            text: "Please enter a valid password",
            icon: "warning", // You can use warning here too
            button: "OK",
        });
    }
    if(status == "invalidConfirmPassword") {
        swal({
            title: "Sorry!",
            text: "Password do no matched",
            icon: "warning", // You can use warning here too
            button: "OK",
        });
    } 
    if(status == "invalidMobile") {
        swal({
            title: "Sorry!",
            text: "Please enter a valid Mobile Number",
            icon: "warning", // You can use warning here too
            button: "OK",
        });
    }
    if(status == "invalidMobileLength") {
        swal({
            title: "Sorry!",
            text: "Mobile should be 10 digit",
            icon: "warning", // You can use warning here too
            button: "OK",
        });
    } 
</script>
<%@include file="includes/footer.jsp"%>		
</body>
</html>