<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <title>Email Verification</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("input[name=Email-Verify]").click(function () {
            if ($(this).val() == "Send OTP") {
                $("#dvOTP").show();
            } else {
                $("#dvOTP").hide();
            }
        });
    });
</script>
    </head>
    <body>
        <div class="container">
		<div class="row"> <p> </p> </div>
		<div class="row">  
				<div class = "col"> <h1 style="color:#017bf5">IntelliJobSeek</h1></div>
		</div>
		<div class="row">
			<div class ="col-md-4 offset-md-4 form-div">
					<form id="form-emailverify">
					<h3 class="text-center" style="color:grey"><i class="fa fa-envelope fa-4x"></i></h3>
					<h6 class="text-center" style="color:#017bf5">Verify Email Address!</h6> 						
						<div class="form-group">
						<label for="email">Email</label>
						<input type="email" name="email"
						class="form-control form-control-lg" 
						placeholder="Enter Your Email Address" required="required"/>
					</div> 
					
					<div id="dvOTP" style="display: none">
    					<label for="OTP"> OTP </label>
    					<input type="text" id="txtOTP" class="form-control form-control-lg" 
						placeholder="Enter Your OTP" required="required" />
					</div>
					<div><p> </p> <div>
					<div class="form-group">
						<input type="submit" name ="Email-Verify" form ="form-emailverify" value="Send OTP" class="btn btn-success btn-block" />
					</div>
				</form>
					
		</div>
	</div>
</div> 
    </body>
</html>
