<!doctype html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/styles.css">
</head>
<body style="background-image: url(https://sika.scene7.com/is/image/sika/glo-car-parking-garage-floor-03?wid=1280&crop=0%2C114%2C3840%2C2443); background-size: 1875px;">
		<div  class="container">
			<div class="py-5 text-center">
				<a href="index.jsp"><img class="d-block mx-auto mb-4" src="https://i.pinimg.com/originals/2a/86/48/2a8648834db734974377aca7513b7221.png" alt="" width="192" height="102"></a>
			<div>
				<div class="heading">
						<h2 ><a href="index.jsp"  style="color:#F0FFFF;">CarPark</a></h2>
				</div>
				<div >
					<%
						String message = (String) session.getAttribute("message");
						if (message != null) {
							session.removeAttribute("message");
					%>
				
				<h6 class="registered">
					User registered successfully, Please login.
				</h6>
				<%
					}
				%>
					<form action="UserRegister" method="post">

						<div class="col-md-14 order-md-1">
							
								<div class="row">
								  <div class="col-md-6 mb-3">
									<input class="form-control" type="text" placeholder="First Name" required name="fname">
									<div class="invalid-feedback">
									  Valid first name is required.
									</div>
								</div>

								<div class="col-md-6 mb-3">
								  <input class="form-control" type="text" placeholder="Last Name" required name="lname">
								  <div class="invalid-feedback">
									Valid last name is required.
								  </div>
								</div>
							  </div>
							  <br>
						
						<div class="form-group">
							<input class="form-control" type="text" placeholder="Mobile No" required name="mobile">
							</div>
						<br>
						<div class="form-group">
						<input class="form-control" type="text" placeholder="Email Id" required name="email">
						</div>
						<br>
						<div class="form-group">
							<textarea class="form-control" placeholder="Address" required name="address"></textarea>
						</div>
						<br>
						<div class="form-group">
							<input class="form-control" placeholder="Registration Number" required name="registrationno"></input>
						</div>
						<br>
						<div class="form-group">
							 <input class="form-control" type="text" placeholder="Username" required name="username">
						</div>
						<br>
						<div class="form-group">
							 <input type="password" class="form-control" name="password" placeholder="Password" required>
							 </div>
						<br>
						<div class="form-group">
				          <input type="password" class="form-control" name="cpassword" placeholder="Confirm Password" required>
							 
                       </div>			
			  <button type="submit" class="btn btn-secondary">Sign Up</button>
					</form>
				</div>
			</div>
		</div>
		</div>
</body>
</html>