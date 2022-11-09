package com.intellijobseek.servlets;

import com.intellijobseek.dao.Userdao;
import com.intellijobseek.entities.User;
import com.intellijobseek.utility.ConnectionProvider;
import com.intellijobseek.utility.EncryptPassword;
import com.intellijobseek.utility.Message;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
//            create session
            HttpSession session = request.getSession();
            
            
            String fetched_email=request.getParameter("user_email").trim();
            String fetched_passwd=request.getParameter("user_passwd").trim();
            
            String encript_password=EncryptPassword.cryptWithMD5(fetched_passwd);
            
            Userdao dao = new Userdao(ConnectionProvider.getConnection());
            
            User user = dao.fetchUserByCredential(fetched_email, encript_password);
            if (user != null) 
            {
                    session.setAttribute("user", user);
                    Cookie userid_ck=new Cookie("user_id", user.getUser_id());
                    response.addCookie(userid_ck);
                    response.sendRedirect("./home_page.jsp");    
            }
            else
            {
                session.setAttribute("user", null);
                Message msg = new Message("alert-danger text-center", "Invalid email or password!!");
                session.setAttribute("loginmsg", msg);
                response.sendRedirect("./login_page.jsp");
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
