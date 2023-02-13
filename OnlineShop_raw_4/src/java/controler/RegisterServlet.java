/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import Mailer.SendMail;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Role;
import model.UserStatus;
import model.Users;

/**
 *
 * @author ducth
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

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

        String username = request.getParameter("userName");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repass");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("num");

        Users rawUser = new Users();
        rawUser.setUserName(username);
        rawUser.setPassword(password);
        rawUser.setGender(gender);
        rawUser.setEmail(email);
        rawUser.setPhoneNum(phone);
        request.getSession().setAttribute("rawUser", rawUser);
        UserDAO dao = new UserDAO();
        SendMail sm = new SendMail();
        Users u = dao.checklogin(username, email, phone);
        if (!repassword.equals(password)) {
            request.setAttribute("mess", "Password does not match!");
            request.getRequestDispatcher("common/register.jsp").forward(request, response);
        } else {
            if (u != null) {
                request.setAttribute("mess", "Account is exist!");
                request.getRequestDispatcher("common/register.jsp").forward(request, response);
            } else {
                String verifyCode = sm.getRandom();
                sm.send(email, verifyCode);
                request.getSession().setAttribute("verifyCode", verifyCode);
                request.getSession().setAttribute("status", "register");
                request.getRequestDispatcher("verify.jsp").forward(request, response);

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
