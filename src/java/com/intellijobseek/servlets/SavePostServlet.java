package com.intellijobseek.servlets;

import com.intellijobseek.dao.Postdao;
import com.intellijobseek.entities.Post;
import com.intellijobseek.entities.User;
import com.intellijobseek.utility.ConnectionProvider;
import com.intellijobseek.utility.FolderService;
import com.intellijobseek.utility.GenerateUUID;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class SavePostServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                HttpSession session = request.getSession();

                String post_topic = request.getParameter("post_topic");
                String post_text = request.getParameter("post_text");

                Part part = request.getPart("post_img");
                
                String post_id = GenerateUUID.generateID();
                User user = (User) session.getAttribute("user");
                String user_id="";
                if (user != null) {
                    user_id = user.getUser_id();
                }
                String post_img = "empty";
                if (part.getSize() > 0) {
                    post_img =post_id+part.getSubmittedFileName();
                    //read image data
                    InputStream is = part.getInputStream();
                    byte[] data = new byte[is.available()];
                    is.read(data);
                    String path = "D:\\intellijobseek_user\\"+user_id+File.separator+post_img;
                    FileOutputStream fout = new FileOutputStream(path);
                    fout.write(data);
                    fout.close();
                }

                Postdao dao = new Postdao(ConnectionProvider.getConnection());
                Post post = new Post(post_id, post_text, post_topic, post_img, user_id);
                if ((!user_id.equals(""))&&dao.savePost(post)) {
//                post saved
                    out.println("saved post");
                } else {
                    out.println("error post");
                }
            } catch (Exception e) {
                e.printStackTrace();
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
