<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<title> Add Vehicle</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>
<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<jsp:include page="includes/header.jsp"></jsp:include>

	<div class="breadcrumbs">
		<div class="breadcrumbs-inner">
			<div class="row m-0">
				<div class="col-sm-4">
					<div class="page-header float-left">
						<div class="page-title">
							<h1>Dashboard</h1>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="page-header float-right">
						<div class="page-title">
							<ol class="breadcrumb text-right">
								<li><a href="dashboard.jsp">Dashboard</a></li>
								<li><a href="add-vehicle.jsp">Vehicle</a></li>
								<li class="active">Add Vehicle</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
		<div class="animated fadeIn">


			<div class="row">
				<div class="col-lg-6">
					<div class="card"></div>
					<!-- .card -->

				</div>
				<!--/.col-->
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<strong>Add </strong> Vehicle
						</div>
						<p>
							<%
								String message = (String) session.getAttribute("message");
									if (message != null) {
										session.removeAttribute("message");
							%>
						
						<h6>
							Parking slot is full, Wait for sometimes.
						</h6>
						<%
							}
						%>
						</p>
						<div class="card-body card-block">
							<form action="AddVehicle" method="post">
								<p style="font-size: 16px; color: red" align="center">
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="text-input" class=" form-control-label">Vehicle	Company</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="vehcomp" name="vehcomp"
											class="form-control" placeholder="Vehicle Company" required>
									</div>
								</div>

								<div class="row form-group">
									<div class="col col-md-3">
										<label for="text-input" class=" form-control-label">Registration Number</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="vehreno" name="vehreno"
											class="form-control" placeholder="Registration Number" required>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="text-input" class=" form-control-label">Owner Name</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="ownername" name="ownername"
											class="form-control" placeholder="Owner Name" required>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="text-input" class=" form-control-label">Owner Contact Number</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="ownercontno" name="ownercontno"
											class="form-control" placeholder="Owner Contact Number"
											required maxlength="10" pattern="[0-9]+">
									</div>
																
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="worker">Choose a worker:</label>
									</div>
							<div class="row form-group">
									<div class="col col-md-3">
										<label for="service">Choose a service:</label>
									</div>
									<div class="col-12 col-md-9">
										<select name="service" id="service">
                                   <option value="Car Wash">Car Wash :  100</option>
                                   <option value="Car Repair">Car Repair:  100</option>
                                   <option value="Dry Clean">Dry Clean:  100</option>
                              </select>
									</div>		
								</div>
								<p style="text-align: center;">
									<button type="submit" class="btn btn-primary btn-sm"
										name="submit">Add</button>
								</p>
							</form>
						</div>

					</div>

				</div>
				<div class="col-lg-6"></div>
			</div>
		</div>
		<!-- .animated -->
	</div>
	<!-- .content -->

	<div class="clearfix"></div>

	<jsp:include page="includes/footer.jsp"></jsp:include>

	<%
		} else {
			response.sendRedirect("admin-login.jsp");
		}
	%>
</body>
</html>
