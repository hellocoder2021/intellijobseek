<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <title>Home Page</title>
    </head>
    <body>
        	<div class="container">
		<div class="row"> <p> </p> </div>
		<div class="row">  
				<div class = "col"> <h1 style="color:#017bf5">IntelliJobSeek</h1></div>
		</div>
		<div class="row">
			<div class ="col-md-4 offset-md-4 form-div">
				<form id="form-signIn">
					<h1 class="text-center">Sign In!</h1> 
					<div class="form-group">
						<label for="email"> Email</label>
						<input type="email" name="email"
						class="form-control form-control-lg" 
						placeholder="Enter Your Email Address" required="required"/>
					</div> 
					<div class="form-group">
						 <label for="Password"> Password</label>
						<input type="password" name="Password"
						class="form-control form-control-lg" 
						placeholder="Enter The Password" required="required"/>
					</div>
					<div class="form-group">
						<input type="submit" name ="Sign In" form ="form-signIn" value="Sign In" class="btn btn-primary btn-block" />
					</div>
					<p class="text-center"> 
							Not On IntelliJobSeek?
						<a href="#"> Sign Up</a>
					<p>
				</form>
					
		</div>
	</div>
</div> 

    </body>
</html>
