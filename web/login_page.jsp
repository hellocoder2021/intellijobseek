<%@page import="com.intellijobseek.utility.ConnectionProvider"%>
<%@page import="com.intellijobseek.dao.Userdao"%>
<%@page import="com.intellijobseek.entities.User"%>
<%@page import="com.intellijobseek.utility.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--check for user already login-->
<%
    User user = null;
    Cookie[] cookies = request.getCookies();
    if (cookies == null) {
//      no cookie check session
        user = (User) session.getAttribute("user");
    } 
    else
    {
//      fetch user
        Userdao dao = new Userdao(ConnectionProvider.getConnection());
        for (Cookie c : cookies) {
            String tuserID = c.getName();
            if (tuserID.equals("user_id")) {
                String userID = c.getValue();
                user = dao.getUserByUserID(userID);
            }
        }
    }

    if (user != null) {
        session.setAttribute("user", user);
        response.sendRedirect("./home_page.jsp");
    }

%>


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
                margin:5%auto;
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
        <div class="container-fluid">
            <div class="row"> <p> </p> </div>
            <div class="row">  
                <div class = "col"> <h1 style="color:#017bf5">IntelliJobSeek</h1></div>
            </div>
            <div class="row">
                <div class ="col-md-4 offset-md-4 form-div">
                    <form id="form-signIn" action="./LoginServlet">
                        <h1 class="text-center">Sign In!</h1> 
                        <div class="form-group">
                            <label for="user_email"> Email</label>
                            <input type="email" name="user_email"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter Your Email Address" required="required"/>
                        </div> 
                        <div class="form-group">
                            <label for="user_passwd"> Password</label>
                            <input type="password" name="user_passwd"
                                   class="form-control form-control-lg" 
                                   placeholder="Enter The Password" required="required"/>
                        </div>
                        <!--message header-->
                        <%            Message msg = (Message) session.getAttribute("loginmsg");
                            if (msg != null) {
                        %>
                        <h5 class="alert <%=msg.getMsgClass()%>" role="alert">
                            <%=msg.getContent()%>
                        </h5>
                        <%
                                session.removeAttribute("loginmsg");
                            }
                        %>
                        <!--end of msg header-->
                        <div class="form-group">
                            <input type="submit" name ="Sign In" form ="form-signIn" value="Sign In" class="btn btn-success btn-block" />
                        </div>
                        <p class="text-center"> 
                            Not On IntelliJobSeek :(?
                            <a href="./registration_page.jsp" class="text-success"> Sign Up</a>
                        <p>
                    </form>

                </div>
            </div>
        </div> 

    </body>
</html>
