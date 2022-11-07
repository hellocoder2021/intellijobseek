<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <title>Intellijobseek | Forgot Password </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <style>
            body{background-color: #f5f6fa;}
        </style>
    </head>
    <body>
    <div class="container">
		<div class="row"> <p> </p> </div>
		<div class="row">  
				<div class = "col"> <h1 style="color:#017bf5">IntelliJobSeek</h1></div>
		</div>
		<div class="row">
			<div class ="col-md-4 offset-md-4 form-div">
					<form id="form-forgotpassword">
					<h3 class="text-center" style="color:grey"><i class="fa fa-lock fa-2x"></i></h3>
                                        <br>
                                        <br>
                                        <h6 class="text-center" style="color:#017bf5">FORGOT PASSWORD? </h6> 						
						<div class="form-group">
						<label for="email"> Email</label>
						<input type="email" name="email"
						class="form-control form-control-lg" 
						placeholder="Enter Your Email Address" required="required"/>
					</div> 
					<div class="form-group">
						<input type="submit" name ="Forgot Password" form ="form-forgotpassword" value="Reset Password" class="btn btn-success btn-block" />
					</div>
				</form>
					
		</div>
	</div>
</div>     
    </body>
</html>
