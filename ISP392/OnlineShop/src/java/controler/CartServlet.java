/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controler;

import dal.CartDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Cart;
import model.Product;
import model.Users;

/**
 *
 * @author Tu
 */
public class CartServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        doPost(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            if(session!=null){
                Users user = (Users) session.getAttribute("user");

                String productId_String = request.getParameter("productId");
                int productId = Integer.parseInt(productId_String);
                ProductDAO product_dao = new ProductDAO();
                Product x = new Product();
                x.setProductID(productId);
                Product product = product_dao.selectById(x);

                String amount_string = request.getParameter("amount");
                int amount = Integer.parseInt(amount_string);

                Cart c = new Cart(5, user, product, amount);
                CartDAO cart_dao = new CartDAO();
                for (Cart object : cart_dao.selectAll()) {
                    if((c.getUser().getUserID()== object.getUser().getUserID()) && (c.getProduct().getProductID()==object.getProduct().getProductID())){
                        request.getRequestDispatcher("home").forward(request, response);
                    }
                }
                cart_dao.insert(new Cart(5, user, product, amount));
                request.getRequestDispatcher("home").forward(request, response);
            }
            else{
                request.getRequestDispatcher("login").forward(request, response);
            }
        } catch (Exception e) {
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");
        CartDAO cart_dao = new CartDAO();
        ArrayList<Cart> list = cart_dao.selectByUserId(user.getUserID());
        Arraylist<ProductImg> 
        request.setAttribute("list",list);
        request.getRequestDispatcher("viewCart.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
