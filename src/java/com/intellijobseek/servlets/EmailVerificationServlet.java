package com.intellijobseek.servlets;

import com.intellijobseek.dao.Userdao;
import com.intellijobseek.utility.ConnectionProvider;
import com.intellijobseek.utility.EmailSender;
import com.intellijobseek.utility.Message;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmailVerificationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String email = request.getParameter("email");
            String otp = request.getParameter("otp");
            if (otp == null) {
                //get the 6-digit code
                String gen_otp = EmailSender.getRandom();

                //please provide reciver email and organization mail and password
                String orgmail = "intellijobseek@gmail.com";
                String orgpass = "kokqqdwjcylzlmjj";
                String welcome_msg = "Hello!!!";
                
//              check for existing user
                boolean flag=false;
                Userdao dao = new Userdao(ConnectionProvider.getConnection());
                if (!dao.isExistingUser(email) && (flag=true) && EmailSender.sendEmail(email, orgmail, orgpass, welcome_msg, gen_otp)) {
                    
                    session.setAttribute("prev_otp", gen_otp);
                    session.setAttribute("prev_email", email);
                    session.setMaxInactiveInterval(30 * 60);
                    out.println("<label for=\"OTP\"> OTP </label>");
                    out.println("<input type=\"text\" id=\"otp\" name=\"otp\" class=\"form-control form-control-lg\" placeholder=\"Enter Your OTP\" required=\"required\" />");
                
                } else {
                    if(!flag)
                        out.println("<div class=\"alert alert-danger\" role=\"alert\">" + "entered mail id is already registered wrong try again!!!</div>");
                    else
                        out.println("<div class=\"alert alert-danger\" role=\"alert\">" + "sorry we are unable to send email !!! please try again</div>");
                    
                }
            } 
            else
            {
                String aftemail = request.getParameter("email");
                String aftotp = request.getParameter("otp");

                if (aftemail.equals(session.getAttribute("prev_email")) && aftotp.equals(session.getAttribute("prev_otp")))
                {
                    session.removeAttribute("prev_otp");
                    session.setAttribute("verified_user", "yes");
                    response.sendRedirect("./registration_page.jsp");
                } 
                else
                {
                    Message msg = new Message("text-center alert alert-danger", "entered a wrong otp please try again!!!");
                    session.setAttribute("verifymsg", msg);
                    response.sendRedirect("./emailverification_page.jsp");
                }

            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
