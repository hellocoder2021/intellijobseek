<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <title>Change Password</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    </head>
    <body>
       <div class="container">
		<div class="row"> <p> </p> </div>
		<div class="row">  
				<div class = "col"> <h1 style="color:#017bf5">IntelliJobSeek</h1></div>
		</div>
		<div class="row">
			<div class ="col-md-4 offset-md-4 form-div">
				<form id="form-changePassword">
					<h3 class="text-center" style="color:grey"><i class='fa fa-eye-slash fa-4x'></i></h3>
					<h6 class="text-center" style="color:#017bf5">Change Password!</h6> 	
					<div class="form-group">
						<label for="email"> Email</label>
						<input type="email" name="email"
						class="form-control form-control-lg" 
						placeholder="Enter Your Email Address" required="required"/>
					</div> 
					<div class="form-group">
						  
						 <label for="newPassword"> Current Password</label>
						<input type="password" name="Password"
						class="form-control form-control-lg" 
						placeholder="Enter The Password" required="required"/>
					
					</div>
					<div class="form-group">
						 <label for="newPassword"> New Password</label>
						<input type="password" name="newPassword"
						class="form-control form-control-lg" 
						placeholder="Enter The Password" required="required"/>
					</div>
					

					<div class="form-group">
						<input type="submit" name ="Set Password" form ="form-changePassword" value="Submit" class="btn btn-success btn-block" />
					</div>
				</form>
					
		</div>
	</div>
</div> 
 
    </body>
</html>
