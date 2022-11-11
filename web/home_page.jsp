<%@page import="com.intellijobseek.utility.ConnectionProvider"%>
<%@page import="com.intellijobseek.dao.Userdao"%>
<%@page import="com.intellijobseek.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User user = null;
    Cookie[] cookies = request.getCookies();
    if (cookies == null) {
//      no cookie check session
        user = (User) session.getAttribute("user");
    } else {
//      fetch user
        Userdao dao = new Userdao(ConnectionProvider.getConnection());
        for (Cookie c : cookies) {
            String tuserID = c.getName();
            if (tuserID.equals("user_id")) {
                String userID = c.getValue();
                user = dao.getUserByUserID(userID);
                if (user != null) {
                    session.setAttribute("user", user);
                }
            }
        }
    }

    if (user == null) {
//      remove old sessions of user
        response.sendRedirect("./login_page.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,intial-scale=1,shrink-to-fit=no">
        <script type="text/javascript" src="./javascript/post_operation.js" defer></script>
        <title>Intellijobseek | Home Page </title>
        <style>
            body{background-color: #f5f6fa;}
        </style>
        <jsp:include page="global/header.jsp" />
        <script type="text/javascript">

            $("#create_post_from").on('submit', function (event) {
                event.preventDefault();
                let f = new FormData(this);
                $.ajax({
                    url: './SavePostServlet',
                    data: f,
                    type: 'POST',
                    success: function (data, textStatus, jqXHR)
                    {
                        console.log(data);
                        $('#dvOTP').html(data);
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(data);
                    },
                    processData: false,
                    contentType: false
                });
            });


        </script>

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
                background: white; } 
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
                background:url('./img/background.jpeg');
            }
            .image{
                background:none;
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
                background:#74b9ff;
                border-radius:20px;
                height:40px;
                width:140px;
                margin-left:60px;
                margin-right:auto;
                text-align:center;

            }
            .modal-btn
            {
                text-align:center;
                height:50px;
                width: 100px;
                border-radius: 5px;
                padding: 5px;
                font-size: 1.2em;

            }


            .btn:hover{
                background:none;
                color:#27ae60;
                border:1px solid purple;
                border-style:double;
                transition:1s;
                color:white;
            }
            .btn a{
                padding: 2px;
                text-decoration:none;
                color:blue;
                text-align: center;
                color:white;
                display:block;
            }
            .btn a:hover{
                color:purple;
                transition:1s;
                top:0;
            }
            .img:hover{
                cursor: pointer;
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
                        <a class="navbar-brand" href="./home_page.jsp"><h4 style="color:#017bf5">IntelliJobSeek</h4></a>
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
                                <li class="nav-item">
                                    <a class="nav-link" href="./LogoutServlet"><i class="fa fa-sign-out" style="font-size:24px"></i>Sign_Out</a>
                                </li>
                            </ul>
                            <form class="form-inline my-1 my-lg-0">
                                <input class="form-control mr-sm-1" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn  my-2 my-sm-0" type="submit" style="height: 100%; background: none; width: 100px; border-radius: 5px; border:1px solid purple;"><i class="fa fa-search" style="font-size:24px; color: black;"></i></button>
                            </form>
                        </div>
                    </nav>
                </div>
            </div>

            <!--profile card-->
            <div class="row">
                <div class="col-3" id ="profile"> 
                    <div class="profile_conteiner">
                        <div class="image_conteiner">
                            <div class="image">
                                <input type="file" name="profilepic" id="proimg" style="display:none;"/>
                                <label for="proimg">
                                    <img src="./img/default.jpg" class="rounded-circle" id="change_profile_pic">
                                </label>
                                <div><button class="modal-btn btn-primary" style="border :none;">Update</button></div>
                            </div>
                        </div>
                        <div class="text_conteiner">
                            <div class="title">
                                <h3>Prabhjeet Singh</h3><br>
                                <h4>Web Developer</h4><br>
                            </div>
                            <div class="objective">
                                <p>To secure a challenging and rewarding position as Android Developer with an established organization that can utilize my skills and experience.</p>
                            </div><br>
                            <div class="btn">
                                <center><a href="./profile_page.jsp">View Profile</a></center>
                            </div>
                        </div>
                    </div>
                </div>
                <!--user posts-->
                <div class="col-5" id ="posts">
                    <br>
                    <br>
                    <br>

                    <h6 class="row">
                        <div class="col-3">
                            <button id="user_profile_button" type="button" class="btn-circle btn-sm" style="height: 60px; border-radius: 50%; width: 60px;" >
                                <img src="./img/photo.jpg" style="witdth:100%; height: 80%;" />
                            </button>
                        </div>
                        <div class="col-9">
                            <input class="form-control" type="text" placeholder="start sharing your thoughts" id="post_form_button" style="height:60px; font-size: 1.1em;"/>
                        </div>
                    </h6>
                    <h6 class="row">
                        <div class="col-3"><button type="button" class="btn btn-primary" style="background:#ecf0f1; width: 100px; padding: 0px; margin:0px;"><img src="./img/8664927_image_photo_icon.png" style="witdth:100%; height: 80%;" /></button></div>
                        <div class="col-3"><button type="button" class="btn btn-primary" style="background:#ecf0f1; width: 100px; padding: 0px; margin:0px;"><img src="./img/8664927_image_photo_icon.png" style="witdth:100%; height: 80%;" /></button></div>
                        <div class="col-3"><button type="button" class="btn btn-primary" style="background:#ecf0f1; width: 100px; padding: 0px; margin:0px;"><img src="./img/8664927_image_photo_icon.png" style="witdth:100%; height: 80%;" /></button></div>
                        <div class="col-3"><button type="button" class="btn btn-primary" style="background:#ecf0f1; width: 100px; padding: 0px; margin:0px;"><img src="./img/8664843_pen_to_square_icon.png" style="witdth:100%; height: 80%;" /></button></div>
                    </h6>
                    <hr>
                    <div class="card mb-3">
                        <img class="card-img-top" src="./img/default.jpg" alt="Card image cap" style="height: 100px;">
                        <div class="card-body">
                            <h5 class="card-title">Post</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                    <!--user post ended-->
                    <div class="col-4" id ="footer">
                        <h2> FOOTER</h2>
                    </div>
                </div>
            </div>  

            <!--post form modal-->
            <!-- Modal -->
            <div class="modal fade" id="create_post_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <!--create post form-->
                            <div class="container-fluid">
                                <div class="row">

                                    <div class="col-md-12 col-md-offset-2">

                                        <h5 class="text-center text-primary">Create post</h5>
                                        <div id="error_alert">
                                        <!--error msg-->
                                            
                                        </div>
                                        <form action="" method="POST" id="create_post_from">

                                            <div class="form-group has-error">
                                                <label for="slug">Topic<span class="require">*</span></label>
                                                <input type="text" class="form-control" name="post_topic" id="post_topic"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea rows="5" class="form-control" name="post_text" id="post_text" required></textarea>
                                            </div>

                                            <div class="input-group">
                                                <div class="custom-file">
                                                    <input type="file" name="post_img" class="custom-file-input" id="post_img" aria-describedby="inputGroupFileAddon04">
                                                    <label class="custom-file-label" for="post_img">upload image</label>
                                                </div>
                                            </div>
                                            <%if (user != null) {%>
                                            <input type="hidden" name="user_id" value="<%=user.getUser_id()%>"/>
                                            <%}%>
                                            <!--</form>-->
                                    </div>

                                </div>
                            </div>
                            <!--end create post form-->


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn-secondary modal-btn" data-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn-primary modal-btn" id="send_post_btn" >Post</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--end post form modal-->
    </body>
</html>
