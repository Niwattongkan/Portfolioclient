<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<link rel="stylesheet" href="css/style.css">


</head>

<body>

	<div class="form">

		<ul class="tab-group">
			<li class="tab active"><a href="#login">Log In</a></li>
			<li class="tab"><a href="#signup">Resgister</a></li>
		</ul>

		<div class="tab-content">

			<div id="login">
				<h1>Welcome Prolity</h1>

				<form action="http://localhost:8080/PorlityClient/indexStudent.jsp"
					method="post">
					<div class="field-wrap">
						<label> Email Address <span class="req">*</span></label>
						<input type="email" required autocomplete="off" />
					</div>
					<div class="field-wrap">
						<label> Password <span class="req">*</span>
						</label> <input type="password" required autocomplete="off" />
					</div>

					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>
					<input type="submit" value="login" />
				</form>
			</div>

			<div id="signup">
				<h1>Resgister</h1>
				<form:form commandName="user">
						<div class="top-row">
							<div class="field-wrap">
								<label> First Name <span class="req">*</span></label>
								 <form:input type="text" required autocomplete="off" path="name"/>
							</div>

							<div class="field-wrap">
								<label> Last Name <span class="req">*</span></label> 
								<form:input type="text" required autocomplete="off" path="surname"/>
							</div>
						</div>

						<div class="field-wrap">
								<label> Email Address <span class="req">*</span></label>
								<form:input type="email" required autocomplete="off" path="email"/>
						</div>

						<div class="field-wrap">
								<label> Set Password <span class="req">*</span></label> 
								<form:input type="password" required autocomplete="off" path="password"/>
						</div>

						<button type="submit" class="button button-block" />submit</button>
				</form:form>
			</div>
		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>

</body>

</html>