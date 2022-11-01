<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,intial-scale=1,shrink-to-fit=no">
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
		<h2> PROFILE</h2>
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