<%@page import="com.intellijobseek.utility.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <title>Intellijobseek | Email Verification</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <style>
            body{background-color: #f5f6fa;}
            .form-div{
                border : 1.4px solid black;
                border-radius: 5px;
            }
        </style>
        <script type="text/javascript" src="javascript/opt_div.js" defer></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>        
    </head>
    <body>
     
        <div class="container">
            <div class="row"> <p> </p> </div>
            <div class="row">  
                <div class = "col"> <h1 style="color:#017bf5">IntelliJobSeek</h1></div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class ="col-md-6 offset-md-4 form-div" align="center">
                    <br>
                    <form id="form-emailverify" >
                        <h3 class="text-center" style="color:grey"><i class="fa fa-envelope fa-2x"></i></h3>
                        <br>
                        <br>
                        <!--<h6 class="text-center" style="color:#017bf5">Verify Email Address!</h6>--> 						
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email"
                                   class="form-control form-control-lg" 
                                   placeholder="example@gmail.com" required="required"/>
                        </div> 

                        <div id="dvOTP" >
                            <!--dynamic-->
                        </div>
                        <div>
                            <!--message header-->
                            <%
                                Message msg = (Message) session.getAttribute("verifymsg");
                                if (msg != null) {
                            %>
                            <h5 class="alert <%=msg.getMsgClass()%>" role="alert">
                                <%=msg.getContent()%>
                            </h5>
                            <%
                                    session.removeAttribute("verifymsg");
                                }
                            %>
                            <!--end of msg header-->
                        </div>
                        <div><p> </p> <div>
                                <div class="form-group">
                                    <input type="button" id="submit" form ="form-emailverify" value="Send OTP" class="btn btn-success btn-block" />
                                </div>
                                </form>
                            </div>
                        </div>
                </div> 
                </body>
                </html>