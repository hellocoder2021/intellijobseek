<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="global/header.jsp" />
        <title>intelliJobSeek | Profile Page</title>
        <style>
            body{
                padding: 2rem 0rem;
            }
            .avatar {
                border: 0.3rem solid rgba(#fff, 0.3);
                margin-top: -6rem;
                margin-bottom: 1rem;
                max-width: 9rem;
            }

            .card {
                margin-left:1rem;
                margin-top: 1rem;
                width:40rem;
                height: auto;
                border: 0px solid red;
            }
            .card-img-top {
                width:40rem;
                height: 13rem;
                border: 0px solid blue;
            }

            .card-body {
                border: 2px solid red;
                height: auto;

            }
            .card-body img {
                border: 2px solid red;
            }

            #ii {
                height: 45rem;
            }

            #ExperienceRow {
                height: 7rem;

            }
            #AboutRow {
                height: 7rem;
            }
            #SkillsRow {
                height: 7rem;
            }
            #EducationRow{
                height:8rem;
            }
            .aboutMe {
                height: auto;
            }
            .microphpone_btn {
                border: 0px;
            }
            .Aboutcard {
                margin-left:1rem;
                margin-top:  -10rem;
                width:40rem;
                height: auto;
                border: 1px solid slategray;
                position: relative;
            }
            .editAbout{
                position: absolute;
                right: 1rem;
                top: 0.2rem;
                padding-top: 2px;
                padding-right: 26px;
                width: 3rem;
                border: 0px;
                color: black;
                background-color: white;
                /* z-index: -1; */
            }

            .Aboutcardbody{
                height:auto;
                margin-left:1rem;
                margin-top: 1rem;
            }
            .Experiencecard {

                margin-left:1rem;
                margin-top:  -10rem;
                width:40rem;
                height: auto;
                border: 1px solid slategray;
                position: relative;

            }
            .editExp {
                position: absolute;
                right: 1rem;
                top: 0.2rem;
                padding-top: 2px;
                padding-right: 26px;
                width: 3rem;
                border: 0px;
                color: black;
                background-color: white;
                /* z-index: -1; */
            }
            .Expcardbody {
                height:auto;
                margin-left:1rem;
                margin-top: 1rem;
            }

            .Skillscard {

                margin-left:1rem;
                margin-top:  -10rem;
                width:40rem;
                height: auto;
                border: 1px solid slategrey;
                position: relative;

            }

            .editskill {
                position: absolute;
                right: 1rem;
                top: 0.2rem;
                padding-top: 2px;
                padding-right: 26px;
                width: 3rem;
                border: 0px;
                color: black;
                background-color: white;
                /* z-index: -1; */
            }
            .skillcardbody {
                height:auto;
                margin-left:1rem;
                margin-top: 1rem;
            }
            .Educationcard {
                margin-left:1rem;
                margin-top:  -10rem;
                width:40rem;
                height: auto;
                border: 1px solid slategrey;
                position: relative;
            }
            .editeducation {
                position: absolute;
                right: 1rem;
                top: 0.2rem;
                padding-top: 2px;
                padding-right: 26px;
                width: 3rem;
                border: 0px;
                color: black;
                background-color: white;
                /* z-index: -1; */

            }
            .Eductioncardbody {
                height:auto;
                margin-left:1rem;
                margin-top: 1rem;

            }

            .overlay{
                position: fixed;
                top:0;
                bottom: 0;
                left:0;
                right:0;
                background: rgba(0,0,0,0.1);
                transition: opacity 500ms;
                visibility: hidden;
                opacity: 0;
            }
            .overlay:target{
                visibility: visible;
                opacity: 1;
            }
            .wrapper{
                margin:70px auto;
                padding:20px;
                background: #e7e7e7;
                border-radius: 5px;
                width: 30%;
                position: relative;
                transition: all 5s ease-in-out;
            }
            .wrapper h3 {
                margin-top: 0;
                color: #333;
            }
            .wrapper .close {
                position:absolute;
                top: 20px;
                right: 30px;
                transition: all 200ms;
                font-size:30px;
                font-weight: bold;
                text-decoration: none;
                color: #333;
            }
            .wrapper .content {
                max-height: 30%;
                overflow: auto;
            }





        </style>
    </head>
    <body>
        <!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <title>  IntelliJobSeek|ProfilePage</title>
        <link rel="stylesheet" href="profilestyle.css"> 
    </head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
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
                  
                        <li class="nav-item">
                          <a class="nav-link" href="#"><i class="fa fa-building" style="font-size:24px"></i>work</a>
                        </li>
  
                  
                       </ul>
                      <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"  style="font-size: 18pt; height: 40px; width:250px;">
                        <button class="bt btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" style="font-size:26px"></i></button>
                      </form>
                    </div>
                  </nav>
            </div>
        </div>
        <div class="row" id="ii">
                  <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="card">
                      <img class="card-img-top" src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/oslo.jpg" alt="Bologna">
                      <div class="card-body">
                        <img class="avatar rounded-circle" style="display: flex" src="prabh.jpg" alt="UserPic">
                        <h4 class="card-title" style="display: inline">Prabhjeet Singh </h4> 
                        <div class="microphone" style="display: inline">
                            <button class=" btn btn-light microphpone_btn"><i class="fa fa-microphone fa-2x"> </i> </button>
                        </div> 
                        <div class="volume" style="display: inline">
                          <button class=" btn btn-light volume_btn"><i class="fa fa-volume-up fa-2x"> </i> </button>
                      </div>  
                        <div class="aboutMe">
                        <p id="TagLine">Focus on the Big Picture</p>     
                        <p id="Course">MCA@MNNIT</p>
                        <p id="place">New Delhi, India  
                        </p>
                        <a href="#" class="btn btn-info">Build Your Resume</a>
                        <a href="#divOne" class="btn btn-outline-info">Contact Info</a>
                        <div class="overlay" id="divOne">
                           <div class ="wrapper">
                              <h3>Prabhjeet Singh</h3>
                              <hr>
                              <a href="#" class="close">&times;</a>
                              <div class="content"> 
                              <div class="container">
                                <h4> Contact Info </h4> 
                                    <p>Profile</p>
                                    <p> www.profileLink.com</p>
                                    <br>
                                    <p> Email</p>
                                    <p>www.profileEmail.com</p>
                                </div>
                              </div>
                              </div>
                           </div> 

                       </div>
                        </div>
                      </div>
                    </div>
                  </div>  
         <div class="row" id="AboutRow">
          <div class="col-12 col-sm-8 col-md-6 col-lg-4">
            <div class="Aboutcard">
                <div class="Aboutcardbody"> 
                  <h4 style="display: inline;"> About</h4> <a id="#"><button class=" btn btn-light editAbout"><i class="fa fa-pencil fa-2x"> </i> </button> </a>
                  <p> Full Stack Developer in Progress | Problem Solving in Progress too</p>
            </div>    
            </div>
          </div>
        </div> 

        <div class="row" id="ExperienceRow">
          <div class="col-12 col-sm-8 col-md-6 col-lg-4">
            <div class="Experiencecard">
                <div class="Expcardbody"> 
                  <h4 style="display: inline;"> Experience</h4> <button class=" btn btn-light editExp"><i class="fa fa-pencil fa-2x"> </i> </button>
                  <p>NONE</p>
                
            </div>
          </div>
        </div>
        </div>
        
        <div class="row" id="SkillsRow">
          <div class="col-12 col-sm-8 col-md-6 col-lg-4">
            <div class="Skillscard">
                <div class="skillcardbody"> 
                  <h4 style="display: inline;"> Skills</h4> <button class=" btn btn-light editskill"><i class="fa fa-pencil fa-2x"> </i> </button>
                  <p>C++ | HTML CSS | ASP.NET C#</p>
                </div>
            </div>
          </div>
        </div>

        <div class="row" id="EducationRow">
          <div class="col-12 col-sm-8 col-md-6 col-lg-4">
            <div class="Educationcard">
                <div class="Eductioncardbody"> 
                  <h4 style="display: inline;"> Education</h4> <button class=" btn btn-light editeducation"><i class="fa fa-pencil fa-2x"> </i> </button>
                  <p> Bachelors</p>
                  <p> Certificate Course</p>
                  <p> Masters</p>
                </div>
            </div>
          </div>
        </div>
      
    </div>
</body>


</html>
    </body>
</html>
