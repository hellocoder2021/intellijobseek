package com.intellijobseek.servlets;

import com.intellijobseek.dao.*;
import com.intellijobseek.entities.*;
import com.intellijobseek.utility.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prashant
 */
public class RegistrationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//            create user session
            HttpSession session = request.getSession();

//          take registration details from user
            
            String user_first_name = request.getParameter("user_first_name").trim();
            String user_last_name = request.getParameter("user_last_name").trim();
            String user_email = request.getParameter("user_email").trim();
            String user_passwd = request.getParameter("user_passwd").trim();
            String user_id = GenerateUUID.generateID();
            String confirm_password = request.getParameter("confirmpass");

//          adding details to session
            session.setAttribute("email", user_email);
            session.setAttribute("fname", user_first_name);
            session.setAttribute("lname", user_last_name);

//          check for confirm password 
            if ((!confirm_password.equals(user_passwd))) {
//                set appropriate message 
                Message msg = new Message("text-center alert alert-danger", "password is different from confirm password!!!");
                session.setAttribute("regmsg", msg);

                response.sendRedirect("./registration_page.jsp");
                return;
            }

//          check weak password
            if (!Validator.isValidPassword(user_passwd)) {
//                set appropriate message 

                Message msg = new Message("text-center alert alert-danger", "Enter strong password(e.g $ema#123@jh)!!!");
                session.setAttribute("regmsg", msg);

                response.sendRedirect("./registration_page.jsp");
                return;
            }
            
//          check valid email
            if (!Validator.isValidEmail(user_email)) {
//                set appropriate message 

                Message msg = new Message("text-center alert alert-danger", "Enter Valid Email(e.g example@gmail.com)!!!");
                session.setAttribute("email", "");
                session.setAttribute("regmsg", msg);

                response.sendRedirect("./registration_page.jsp");
                return;
            }
            

//          encrypt password
            String encript_passwd = EncryptPassword.cryptWithMD5(user_passwd);

            User user = new User(user_id, user_email, encript_passwd, user_first_name, user_last_name);

            Userdao dao = new Userdao(ConnectionProvider.getConnection());
            
//          check for existing user
            if(dao.isExistingUser(user_email))
            {
                Message msg = new Message("text-center alert alert-danger", "This Email already registered!!!");
                session.setAttribute("regmsg", msg);
                response.sendRedirect("./registration_page.jsp");
                
            }else if (dao.registerUser(user)) {
                response.sendRedirect("./login_page.jsp");
                
            } else {
                Message msg = new Message("text-center alert alert-danger", "Error try again!!!");
                session.setAttribute("regmsg", msg);
                response.sendRedirect("./registration_page.jsp");
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
