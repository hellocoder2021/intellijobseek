console.log("js loaded");
function createOptContent(e, o){
    if(o == null)
    {
        $.ajax({
                url : './EmailVerificationServlet',
                data : {email : e},
                success: function (data, textStatus, jqXHR)
                {
                    console.log(data);
                    $('#dvOTP').html(data);
                }
        }); 
    }
}

document.querySelector('#submit').addEventListener('click',()=>{
    var email=document.querySelector('#email').value;
    var otp;
    if(document.querySelector('#otp') === null)
    {
        otp=null;
        createOptContent(email, otp);
    }
    else
    {
        otp=document.querySelector('#otp').value;
        document.querySelector('#submit').setAttribute('type', 'submit');
        document.querySelector('#form-emailverify').setAttribute('action', './EmailVerificationServlet');
        document.querySelector('#form-emailverify').setAttribute('method', 'POST');
    }
});