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
                <h1 style="color:#017bf5">IntelliJobSeek</h1>  
            </div>
            <div class="row">
                <div class ="col-md-4 offset-md-4 form-div">
                    <form id="form-register">
                        <h1 class="text-center">Find Your Job!</h1> 
                        <div class="form-group">
                            <label for="FirstName"> First Name</label>
                            <input type="text" name="FirstName"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter Your First Name" required="required"/>
                        </div> 

                        <div class="form-group">
                            <label for="LastName"> Last Name</label>
                            <input type="text" name="LastName"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter Your Last Name" required="required"/>
                        </div>

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
                            <label for="confirmpass">Confirm Password</label>
                            <input type="password" name="confirmpass"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter The Confirm Password" required="required"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" name ="Sign Up" form ="form-register" value="Sign Up" class="btn btn-primary btn-block" />
                        </div>
                        <p class="text-center"> 
                            Already On IntelliJobSeek?
                            <a href="#"> Sign In</a>
                        <p>
                    </form>

                </div>
            </div>
        </div> 
    </body>
</html>

