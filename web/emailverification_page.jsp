<%@page import="com.intellijobseek.utility.ConnectionProvider"%>
<%@page import="com.intellijobseek.dao.Userdao"%>
<%@page import="com.intellijobseek.entities.User"%>
<%@page import="com.intellijobseek.utility.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--start check user already login-->
<%
    User user=null;
    Cookie[] cookies = request.getCookies();
    if (cookies == null) {
//        no cookie check session
        user=(User)session.getAttribute("user");
    } else {
//        fetch user
        Userdao dao = new Userdao(ConnectionProvider.getConnection());
        for(Cookie c : cookies)
        {
            String tuserID = c.getName();
            if (tuserID.equals("user_id"))
            {
                String userID=c.getValue();
                user= dao.getUserByUserID(userID);
            }
        }
    }
    
    if(user!=null)
    {
//      remove old sessions of user
        session.removeAttribute("user");
        session.setAttribute("user", user);
        response.sendRedirect("./home_page.jsp");
    }

%> 

<!--end check user already login-->



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

        <!--google api-->
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="416698004530-58ar0tcth65avvjiee8sda878g6biav7.apps.googleusercontent.com">
        <script type="text/javascript" defer>
            function onSignIn(googleUser) {
                var profile = googleUser.getBasicProfile();
                var imgurl = profile.getImageUrl();
                var name = profile.getName();
                var email = profile.getEmail();
                console.log(name);
//                $.ajax({
//                    url: './RegisterWithGoogle',
//                    data: {
//                        user_img_url: imgurl,
//                        user_name: name,
//                        user_email: email
//                    },
//                    success: function (data, textStatus, jqXHR) {
//                        console.log(data);
////                        mydata = data;
////                        $('#salesrecord').html(data);
//                    }
//                });


            }
        </script>

        <!--end of google api-->
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
                        <div>
                            <p> </p>
                            <div>
                                <div class="form-group">
                                    <input type="button" id="submit" form ="form-emailverify" value="Send OTP" class="btn btn-success btn-block" />
                                </div>
                                <p class="text-center"> 
                                    Already On IntelliJobSeek ☺?
                                    <a href="./login_page.jsp" class="text-success"> Sign In</a>
                                <p>
                                </form>
                            <hr>
                                <h5 class="text-center" style="color:red">OR</h6>
                                <!--start of google signup integration-->
                                <div >
                                    <div class="g-signin2" data-onsuccess="onSignIn" style=" height: 40px;"></div>
                                </div>
                                <!--end of google signup integration-->
                                <br>
                            </div>
                        </div>
                </div> 

                </body>
                </html>