<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.intellijobseek.utility.Message"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <style>

            body{
                /*background: url(img/background.jpeg);*/
                background-color: #f5f6fa;
                background-size: cover;
                background-attachment:fixed;
                margin:0;
                padding:0;
            }  
            .form-div{
                /*margin:5%auto;*/
                border: 1.4px solid grey;
                border-radius: 5px;

            }

            .form-div h1{
                font-size:1.5em;
                color:#017bf5;
                margin:2% 0; 
            }

            .form-div label{
                font-size:1em;
                color:#017bf5;
                font-weight:500;
                margin:2% 0; 
            }

            .form-div input[type="text"]{
                -webkit-appearnce: none !important;
                border: none;
                border-bottom:1px solid #017fb5;
            }
            .form-div input[type="email"]{
                -webkit-appearnce:none !important;
                border: none;
                border-bottom:1px solid #017fb5;
            }
            .form-div input[type="password"]{
                -webkit-appearnce:none !important;
                border: none;
                border-bottom:1px solid #017fb5;
            }


            .form-div input[type="submit"]{
                margin:2% 0;
                font-size: 1em;
                font-weight:660;
            }
            .form-div p{
                font-size:0.89em;
            }

        </style>
        <title>Home Page</title>
    </head>
    <body>

        <!--message header-->
        <%
            Message msg = (Message) session.getAttribute("regmsg");
            if (msg != null) {
        %>
        <h5 class="alert <%=msg.getMsgClass()%>" role="alert">
            <%=msg.getContent()%>
        </h5>
        <%
                session.removeAttribute("regmsg");
            }
        %>
        <!--end of msg header-->
        <div class="container-fluid">
            <div class="row"> <p> </p> </div>
            <div class="row">  
                <h3 style="color:#017bf5">IntelliJobSeek</h3>  
            </div>
            <div class="row">

            </div>
            <div class="row">

                <%
                    boolean sessionflag = true;
                    if (session == null) {
                        sessionflag = false;
                    }
                    session.setAttribute("default" , "");
                %>

                <div class ="col-md-4 offset-md-4 form-div">
                    <form id="form-register" action="./RegistrationServlet" method="GET">
                        <h1 class="text-center">Create Account</h1> 
                        <div class="form-group">
                            <label for="user_first_name"> First Name</label>
                            <input type="text" name="user_first_name"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter Your First Name" required="required" 
                                   value=<%=(sessionflag) ? session.getAttribute("fname") : session.getAttribute("default") %> "/>
                        </div> 

                        <div class="form-group">
                            <label for="user_last_name"> Last Name</label>
                            <input type="text" name="user_last_name"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter Your Last Name" required="required"
                                   value="<%=(sessionflag) ? session.getAttribute("lname"): session.getAttribute("default")%>"/>
                        </div>

                        <div class="form-group">
                            <label for="user_email"> Email</label>
                            <input type="email" name="user_email"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter Your Email Address" required="required"
                                   value="<%=(sessionflag) ? session.getAttribute("email"): session.getAttribute("default")%>" />
                        </div>

                        <div class="form-group">
                            <label for="user_passwd"> Password</label>
                            <input type="password" name="user_passwd"
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
                            <input type="submit" name ="Sign Up" form ="form-register" value="Sign Up" class="btn btn-primary btn-success btn-block" />
                        </div>
                        <p class="text-center"> 
                            Already On IntelliJobSeek ☺?
                            <a href="./login_page.jsp" class="text-success"> Sign In</a>
                        <p>
                    </form>

                </div>
            </div>
        </div> 
    </body>
</html>

