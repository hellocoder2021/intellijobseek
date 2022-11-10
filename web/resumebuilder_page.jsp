
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <jsp:include page="global/header.jsp" />
        <title>intelliJobSeek | Resume Builder Page</title>
    <style>
        body {
            background-color:lightgrey;
            color: black;
        }
        #cv-form {
            /* display: none; */
        }
        .background {
            background-color: lightcyan;
        }
        img {  
            width: 10rem;
        }
        #cv-template{
            display: none;
        }
    </style>
    </head>
    <body>
        <div class="container" id="cv-form">
            <h2 class="text-center my-2">RESUME BUILDER </h2>
            <p class="text-center">By IntelliJobSeek</p>
            <div class="container text-right">
               <button onclick="generateCV()" class="btn btn-primary btn-lg">Generate CV</button>
           </div>  
       <div class="row">
           <div class="col-md-4">
               <h4>PERSONAL DOSSIER</h4>

               <div class="form-group">
                   <label for="fname">Your First Name: </label>
                   <input type="text" id="fnamefield" placeholder="First Name" class="form-control" required>
               </div>

               <div class="form-group mt-2">
                   <label for="lname">Your Last Name: </label>
                   <input type="text" id="lnamefield" placeholder="Last Name" class="form-control" required>
               </div>

               <div class="form-group mt-2">
                   <label for="dob">Your Date Of Birth: </label>
                   <input type="date" id="dobfield" p laceholder="DOB" class="form-control" required>
               </div>

               <div class="form-group mt-2">
                   <label for="place">Place: </label>
                   <input type="text" id="placefield" class="form-control" placeholder="Place" required>
               </div>

               <div class="form-group mt-2">
                <label for="">Select Your Picture:</label>
                <input id ="imgfield" type="file" class="form-control" required>
               </div>

               <p  class="text-secondary my-3">CONTACT</p>
               <div class="form-group mt-2"> 
                   <label for="addressfield">Your Address: </label> 
                   <textarea id="addressfield" rows="3" cols="50" class="form-control" class="form-control"></textarea> 
               </div>

               <div class="form-group mt-2">
                   <label for="Cnumber">Your Contact Number: </label>
                   <input type="text" id="contactnumberfield" class="form-control" placeholder="Contact" required>
               </div>  
               
               <div class="form-group mt-2">
                   <label for="email">Your Email Address: </label>
                   <input type="email" class="form-control" id="emailfield" placeholder="Email" required>
               </div>
           </div>

           <div class="col-md-4">
            <div class="form-group mt-2"> 
                <label for="objective ">OBJECTIVE: </label> <br>
                <textarea id="objectivefield" rows="3" cols="50" class="form-control"></textarea> 
            </div>

            <p  class="text-secondary my-3">WORK EXPERIENCE</p>
            
            <div class="form-group mt-1" id="we">
                <label for="description" class="mt-2">Job Description:</label>
                <textarea placeholder="Title: 
Employment-Type: Ex-FullTime 
Company-Name: 
Location: 
Start Date: 
End Date: 
Description:" class="form-control defield" rows="7" cols="50"></textarea>
                   
                <div class="container text-center mt-2" id="weAddButton">
                    <button onclick="addNewWEField()" class="btn btn-primary btn-sm">Add</button>
                </div>
            </div>   
        </div> 
        
        <div class="col-md-4">
            <p  class="text-secondary my-3">ACADEMIC CREDENTIALS </p>

            <div class="form-group mt-1" id="aq">
                <label for="des">Qualifications: </label>
                <textarea placeholder="School: 
Degree: Ex-Bachelors 
Field-Of-Study: Ex-Business
Start Date: 
End Date: 
Grade:
Description:" rows="7" cols="50" class="form-control qefield"></textarea>
               
                <div class="container text-center mt-2" id = "aqAddButton" >
                 <button onclick="addNewAQField()"class="btn btn-primary btn-sm">Add</button>
             </div>
         </div> 
        </div>
             </div>
             
            </div>


            <!-- cv Template -->
            <div class="container" id="cv-template"> 
                <div class="row">
                    <div class="col-md-5 text-center mt-3 background">
                        <!-- First Col -->

                        <img src="prabh.jpg" id="imgT" class="img-fluid rounded-circle">

                        <div class="container mt-3">
                           <p id="fnameT1" style="display: inline"> First Name </p> <p id="lnameT1" style="display: inline"> Last Name </p>
                           <br><br>
                           <p style="display: inline"> Date of Birth: </p>
                           <p id="dobT" style="display: inline" class="mt-2">DOB</p>
                           <br><br>
                           <p id="placeT">Place</p> 
                           <hr>
                           <p  class="text-secondary my-3">CONTACT</p>
                            <p id="addT">Address</p>
                            <P id="noT">Phone Number</P>
                            <p id="emailT">Email Address</p>
                        </div>
                    </div>

                    <div class="col-md-7 py-5">
                        <!-- Second Col -->
                        <h1 class="text-center" style="font-weight:980"> 
                            <p id="fnameT2" style="display: inline"> First Name </p> <p id="lnameT2" style="display: inline"> Last Name </p>
                        </h1>

                        <!-- Objective -->
                        <div class="card mt-4">
                            <div class="card-header background">
                            <h3>Objective</h3>
                            </div>
                            <div class="card-body">
                                <p id="objectiveT">Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda rerum eius 
                                    modi alias quam adipisci laboriosam, delectus necessitatibus 
                                    iusto, consectetur porro amet quaerat eaque pariatur? 
                                    Ab veritatis, quisquam culpa debitis iste perspiciatis 
                                    accusantium? Voluptas quod repellendus enim perspiciatis 
                                    deserunt nemo eum voluptatem, atque quia, doloribus 
                                    tempora nihil aspernatur obcaecati exercitationem!
                                </p>
                            </div>
                        </div> 

                        <!-- Work Experience -->
                        <div class="card mt-4">
                            <div class="card-header background">
                            <h3>Work Experience</h3>
                            </div>
                            <div class="card-body">
                                
                                
                                <ul id="weT">
                                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, eum.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, eum.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, eum.</li>          
                                </ul>
                            </div>
                        </div>



                        <!--Academic Qualification-->
                        <div class="card mt-4">
                            <div class="card-header background">
                            <h3>Academic Qualification</h3>
                            </div>
                            <div class="card-body">
                                
                                
                                <ul id="aqT">
                                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, eum.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, eum.</li>
                                    <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, eum.</li>          
                                </ul>
                            </div>
                        </div>
                        
                        <div class="container mt-3 text-center">
                        <button onclick="printCV()" class="btn btn-success" id="but"> PRINT CV
                        </button>
                        </div>

                    </div>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
           
            <script>
                function addNewWEField() {  
                    let newNode = document.createElement('textarea');
                    newNode.classList.add('form-control');
                    newNode.classList.add('defield');
                    newNode.classList.add("mt-2");
                    newNode.setAttribute("rows",7);
                    newNode.setAttribute("placeholder","Title: \nEmployment-Type: Ex-FullTime \nField-Of-Study: Ex-Business \nLocation: \nStart Date: \nEnd Date: \nDescription:");

                    let weOb=document.getElementById("we");
                    let weAddButtonOb=document.getElementById("weAddButton");
                
                    weOb.insertBefore(newNode,weAddButtonOb);
                    
                }  
                function addNewAQField() {
                    let newNode = document.createElement('textarea');
                    newNode.classList.add('form-control');
                    newNode.classList.add('qefield');
                    newNode.classList.add("mt-2");
                    newNode.setAttribute("rows",7);
                    newNode.setAttribute("placeholder","School: \nDegree: Ex-Bachelors \nCompany-Name: \nStart Date: \nEnd Date: \nGrade \nDescription:");

                    let aqOb=document.getElementById("aq");
                    let aqAddButtonOb=document.getElementById("aqAddButton");
                
                    aqOb.insertBefore(newNode,aqAddButtonOb);
                }
                // generatingCV
                function generateCV() {
                    let fnameField=document.getElementById("fnamefield").value;
                    let lnameField=document.getElementById("lnamefield").value;
        
                    let fnameT1 =document.getElementById("fnameT1");
                    let lnameT1 =document.getElementById("lnameT1");

                    fnameT1.innerHTML = fnameField;
                    lnameT1.innerHTML = lnameField;

                    document.getElementById("fnameT2").innerHTML= fnameField;
                    document.getElementById("lnameT2").innerHTML= lnameField;
                    
                    document.getElementById("dobT").innerHTML=document.getElementById('dobfield').value;
                    document.getElementById("placeT").innerHTML=document.getElementById('placefield').value;

                    document.getElementById("addT").innerHTML=document.getElementById('addressfield').value;
                    document.getElementById("noT").innerHTML=document.getElementById('contactnumberfield').value;
                    document.getElementById("emailT").innerHTML=document.getElementById('emailfield').value;
                    
                    //objective
                    document.getElementById("objectiveT").innerHTML=document.getElementById('objectivefield').value;
                     
                // workExperience
                let wes =document.getElementsByClassName("defield");

                let str='';

                for(let e of wes)
                {
                    str =str + `<li> ${e.value} </li>`;
                }
                document.getElementById("weT").innerHTML= str;


                // academics
                let aqs =document.getElementsByClassName("qefield");

                let straq='';

                for(let f of aqs)
                {
                    straq =straq + `<li> ${f.value} </li>`;
                }
                document.getElementById("aqT").innerHTML= straq;
                
                //for image
                let file = document.getElementById("imgfield").files[0];

                let reader=new FileReader();
                reader.readAsDataURL(file);


                reader.onloadend = Function ()
                {
                    document.getElementById("imgT").src = reader.result;

                }




                document.getElementById("cv-form").style.display=" none";
                document.getElementById("cv-template").style.display="block";
            }

                //print CV
               
                 function printCV()
                 {
                    document.getElementById("but").style.display=" none";
                    window.print();
                }
                </script> 
    </body>
</html>
