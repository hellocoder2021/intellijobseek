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
    margin-top: -5rem;
    margin-bottom: 1rem;
    max-width: 9rem;
    position: relative;
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
    /*border: 2px solid red;*/
    height: auto;
}
.aboutMe {
    height: auto;
}

#profilesec{
    /*border: 2px solid red;*/
    height: auto;
    padding-top: 1rem;
    position: relative;
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

/*  */
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

/*  */

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
        <div class="row" id="nav">
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
                  
                        <li class="nav-item">
                          <a class="nav-link" href="#"><i class="fa fa-sign-out" style="font-size:24px"></i>Sign_Out</a>
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
        <!-- profile section -->
        <div class="row justify-content-md-around" id="profilesec" > 
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="card">
                      <img class="card-img-top" src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/oslo.jpg" alt="Bologna">
                      <div class="card-body">
                        <img class="avatar rounded-circle" style="display: flex" src="prabh.jpg" alt="UserPic">
                        <h4 class="card-title" style="display: inline">Prabhjeet Singh </h4>  
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
                    <br> <br><br> <br> <br><br><br> <br><br> <br> 
               
                <div class="Aboutcard">
                    <div class="Aboutcardbody"> 
                      <h4 style="display: inline;"> About</h4> <button class=" btn btn-light editAbout"> <a href="#divTwo"><i class="fa fa-pencil fa-2x"> </i> </a></button> 
                      <div class="overlay ov2" id="divTwo">
                        <div class="wrapper w2">
                            <h4>write about yourself!</h4>
                            <hr>
                            <a href="#" class="close">&times;</a>
                            <div class="content c2">
                                <div class="container">
                                    <form action="#">
                                        <textarea id="textabout" rows="5" cols="50"></textarea>
                                        <br>
                                    <input type="submit" id="submit" value="SAVE" class="btn btn-success">
                                    </form>    
                                </div>
                            </div>
                        </div>
                      </div>
                      
                      
                      <p> Full Stack Developer in Progress | Problem Solving in Progress too</p>
                </div>    
                </div>

                <br> <br><br> <br> <br><br><br> <br><br> <br> 

                <div class="Experiencecard">
                    <div class="Expcardbody"> 
                      <h4 style="display: inline;"> Experience</h4> <button class=" btn btn-light editExp"><a href="#divThree"><i class="fa fa-pencil fa-2x"> </i> </a></button>
                      <div class="overlay ov3" id="divThree">
                        <div class="wrapper w3">
                            <h4> Add Experience!</h4>
                            <hr>
                            <a href="#" class="close">&times;</a>
                            <div class="content c3">
                                <div class="container">
                                    <form action="#">
                                     <label for ="title">Title</label>
                                     <input type="text" id ="title" required="required">
                                        <br> <br>
                                     <label for ="employment">Employment-Type</label>
                                        <select name="employment_type" id="employment">
                                        <option value="op0">Select</option> 
                                        <option value="op1">Full-Time</option>
                                         <option value="op2">Part-Time</option>
                                         <option value="op3">Self-Employed</option>
                                         <option value="op4">Freelance</option>
                                         <option value="op5">Intership</option>
                                         <option value="op6">Traniee</option>       
                                        </select>
                                        <br> <br>
                                     <label for="comapanyName">Company name</label>
                                     <input type="text" id="companyName" required="required">
                                   <br> <br>
                                     <label for="location">Location</label>
                                     <input type="text" id="location" required="required">
                                    <br> <br>
                                    <label for="startDate">Start Date</label>
                                    <input type="date" id="startDate">
                                     <br> <br>
                                    <label for="endDate">End Date</label>
                                    <input type="date" id="endDate">
                                    <br> <br>
                                    <label for="description">Description</label>
                                    <textarea id="description" rows="5" cols="50"></textarea>
                                        <br> <br>
                                     <input type="submit" id="submit" value="SAVE" class="btn btn-success">
    
                                </form>    
                                </div>
                            </div>
                        </div>
                      </div>
                      <p>NONE</p>
                    
                </div>
              </div>
              <br> <br><br> <br> <br><br><br> <br><br> <br> 

              <div class="Skillscard">
                <div class="skillcardbody"> 
                  <h4 style="display: inline;"> Skills</h4> <button class=" btn btn-light editskill"> <a href="#divFour"><i class="fa fa-pencil fa-2x"> </i> </a></button>
                  <div class="overlay ov4" id="divFour">
                    <div class="wrapper w4">
                        <h4>Add Skills!</h4>
                        <hr>
                        <a href="#" class="close">&times;</a>
                        <div class="content c4">
                            <div class="container">
                                <form action="#">
                                    <label for="skill">Skill</label>
                                    <input type="text" id="skill">
                                    <br> <br>
                                <input type="submit" id="submit" value="SAVE" class="btn btn-success">
                                </form>    
                            </div>
                        </div>
                    </div>
                  </div>
                  <p>C++ | HTML CSS | ASP.NET C#</p>
                </div>
            </div>

            <br> <br><br> <br> <br><br><br> <br><br> <br> 

            <div class="Educationcard">
                <div class="Eductioncardbody"> 
                  <h4 style="display: inline;"> Education</h4> <button class=" btn btn-light editeducation"><a href="#divFive"><i class="fa fa-pencil fa-2x"> </i> </a></button>
                  <div class="overlay ov5" id="divFive">
                    <div class="wrapper w4">
                        <h4>Add Education!</h4>
                        <hr>
                        <a href="#" class="close">&times;</a>
                        <div class="content c4">
                            <div class="container">
                                <form action="#">
                                    <label for ="school">School</label>
                                    <input type="text" id ="school" required="required">
                                       <br> <br>
                                    <label for ="Degree">Degree</label>
                                    <input type="text" id="Degree" placeholder="Ex Bachelors">       
                                    <br> <br>

                                    <label for="FieldofStudy">Field of Study</label>
                                    <input type="text" id="FieldofStudy" required="required" placeholder="Ex Business">
                                  <br> <br>

                                   <label for="startDate">Start Date</label>
                                   <input type="date" id="startDate">
                                    <br> <br>
                                   <label for="endDate">End Date</label>
                                   <input type="date" id="endDate">
                                   <br> <br>

                                   <label for ="Grade">Grade</label>
                                    <input type="text" id="Grade">       
                                    <br> <br>

                                   <label for="description">Description</label>
                                   <textarea id="description" rows="5" cols="50"></textarea>
                                       <br> <br>

                                <input type="submit" id="submit" value="SAVE" class="btn btn-success">
                                </form>    
                            </div>
                        </div>
                    </div>
                  </div>          
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
