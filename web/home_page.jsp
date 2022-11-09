<%@page import="com.intellijobseek.utility.ConnectionProvider"%>
<%@page import="com.intellijobseek.dao.Userdao"%>
<%@page import="com.intellijobseek.entities.User"%>
<%@page import="com.intellijobseek.utility.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--check for user already login-->
<%
    User user=null;
    Cookie[] cookies = request.getCookies();
    if (cookies == null) {
//        no cookie check session
        user=(User)session.getAttribute("user");
    } 
    else
    {
//      fetch user
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
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,intial-scale=1,shrink-to-fit=no">
        <title>Intellijobseek | Home Page </title>
        <style>
            body{background-color: #f5f6fa;}
        </style>
        <jsp:include page="global/header.jsp" />
        <style>
            .container-fluid{
                border:  0px;
            }

            .row {
                border: 0px;
            }
            .col,.col-2,.col-3,.col-7{
                border: 0px;
            }

            body {
                background: #EBF4FA; } 
            .profile_conteiner{
	height:600px;
	width:300px;
	box-shadow: 0px 6px 10px -6px;
	border-radius:10px;
	margin:auto;
	margin-top:60px;
	margin-bottom:60px;
	overflow:hidden;
        }
        .image_conteiner{
	height:150px;
	background:orange;
        }
        .image{
	background:blue;
	height:120px;
	width:120px;
	padding:5px;
	border-radius:50%;
	transform:translate(100px,90px); 
        }
        .image img{
	height:110px;
	width:110px;
	border-radius:50%;
	
        }
        .text_conteiner{
	height:350px;
	background: white;
	padding:20px;
	padding-top:70px;
        }
        .text_conteiner h3,h4,p{
	text-align:center;
        }
        .title h4{
	color:lightcoral;
        }
        .btn{
	background:purple;
	border-radius:20px;
	height:40px;
	width:140px;
	margin-left:60px;
	margin-right:auto;
	text-align:center;
	
        }
        .btn:hover{
	background:none;
	color:purple;
	border:2px solid purple;
	border-style:double;
	transition:1s;
        }
        .btn a{
	text-decoration:none;
	color:blue;
	line-height:40px;
	color:white;
	display:block;
        }
        .btn a:hover{
	color:purple;
	transition:1s;
	top:0;
        }
        </style>
            <title>Home Page</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        </head>
        <body>
            
            <div class = "container-fluid">
            <div class= "row">
                <div class = "col-12">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <a class="navbar-brand" href="#"><h4 style="color:#017bf5">IntelliJobSeek</h4></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><i class="fa fa-home" style="font-size:24px"></i>Home</a></li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><i class="fa fa-users" style="font-size:24px"></i>People</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><i class="fa fa-suitcase" style="font-size:24px"></i>Jobs</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><i class="fa fa-comment" style="font-size:24px"></i>Chats</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"><i class="fa fa-bell" style="font-size:24px"></i>Notifications</a>
                                </li>
                            </ul>
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" style="font-size:24px"></i></button>
                            </form>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-3" id ="profile"> 
                    <div class="profile_conteiner">
		<div class="image_conteiner">
			<div class="image">
				<img src="#" class="rounded-circle">
			</div>
		</div>
		<div class="text_conteiner">
			<div class="title">
				<h3>Prabhjeet Singh</h3><br>
				<h4>Android Developer</h4><br>
			</div>
			<div class="objective">
			<p>To secure a challenging and rewarding position as Android Developer with an established organization that can utilize my skills and experience.</p>
			</div><br>
			<div class="btn">
				<center><a href="#">View Profile</a></center>
			</div>
		</div>
	</div>
                </div>

                <div class="col-7" id ="posts"> 
                    <h2> POSTS</h2>
                </div>


                <div class="col-2" id ="footer">
                    <h2> FOOTER</h2>
                </div>
            </div>
        </div>  
    </body>
</html>
