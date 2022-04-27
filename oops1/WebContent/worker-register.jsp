<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
</head>
<body style="background-image: url(https://sika.scene7.com/is/image/sika/glo-car-parking-garage-floor-03?wid=1280&crop=0%2C114%2C3840%2C2443); background-size: 1275px;">
		<div class="container3">
			<div class="login-content">
				<div class="login-logo">
						<h4 style="color: #FFF"><a href="index.jsp">CarPark</a></h4>
				</div>
				<div class="login-form">
						<%
							String message = (String) session.getAttribute("message");
							if (message != null) {
								session.removeAttribute("message");
						%>
					
					<h6>
						User registered successfully, Please login.
					</h6>
					<%
						}
					%>
					<form action="WorkerRegister" method="post">
						<div class="form-group">
							<label>First Name</label> <input class="form-control" type="text" placeholder="First Name" required name="fname">
						</div>
						<div class="form-group">
							<label>Last Name</label> <input class="form-control" type="text" placeholder="Last Name" required name="lname">
						</div>
						<div class="form-group">
							<label>Mobile No</label> 
							<input class="form-control" type="text" placeholder="Mobile No" required name="mobile">
						</div>
						<div class="form-group">
							<label>Email Id</label> <input class="form-control" type="text" placeholder="Email Id" required name="email">
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea class="form-control" placeholder="Address" required name="address"></textarea>
						</div>
						<div class="form-group">
							<label for="service">Choose a service:</label>
                              <select name="service" id="service">
                                   <option value="Car Wash">Car Wash</option>
                                   <option value="Car Repair">Car Repair</option>
                                   <option value="Dry Clean">Dry Clean</option>
                              </select>
						</div>
						<div class="form-group">
							<label>User Name</label> <input class="form-control" type="text" placeholder="Username" required name="username">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password" class="form-control" name="password" placeholder="Password" required>
						</div>
						<div>
							<label class="pull-left"><a href="index.jsp">HomePage</a></label> 
							<label class="pull-right"><a href="worker-login.jsp">Sign In </a></label>
						</div>
						<button type="submit" name="login" class="btn btn-warning">Sign Up</button>
					</form>
				</div>
			</div>
		</div>
</body>
</html>
