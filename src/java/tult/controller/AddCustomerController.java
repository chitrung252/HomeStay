/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tult.daos.BookingOrderDAO;
import tult.daos.CustomerDAO;
import tult.dtos.CartRoomObj;
import tult.dtos.RoomDTO;

/**
 *
 * @author Admin
 */
public class AddCustomerController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "index.jsp";

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
        String url = ERROR;
        int customerId,result1;
        boolean result2;
        try {
            String fullname = request.getParameter("txtFullname");
            String cmnd = request.getParameter("txtCmnd");
            String phone = request.getParameter("txtPhone");
            String email = request.getParameter("txtEmail");
            CustomerDAO daoCus = new CustomerDAO();
            result1 = daoCus.AddCustomerOrder(fullname, cmnd, phone, email);
            customerId = daoCus.getCustomerId(fullname, cmnd, phone, email);
            BookingOrderDAO daoOrder = new BookingOrderDAO();
            HttpSession session = request.getSession();
            CartRoomObj cart = (CartRoomObj) session.getAttribute("cart");                        
           for (RoomDTO dto : cart.getCart().values()) {                       
                   result2 = daoOrder.AddBookingOrder(customerId,dto.getRoomId() ,1);                
                }
           url = SUCCESS;

        } catch (Exception e) {
            log("Error in Add Customer Controller  " + e.getMessage());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
