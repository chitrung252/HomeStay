/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;   
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tult.dtos.CartRoomObj;
import tult.dtos.RoomDTO;

/**
 *
 * @author Admin
 */
public class AddRoomToCartController extends HttpServlet {
    
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
        try {
            HttpSession session = request.getSession();
            CartRoomObj cart = (CartRoomObj) session.getAttribute("cart");
            if(cart==null){
                cart = new CartRoomObj("Tult");
            }
            // trc khi khoi t phai xu ly gio hang xem neu no null nhu the nao
            String roomId = request.getParameter("RoomId");
            String roomName = request.getParameter("RoomName");
            String roomPrice = request.getParameter("RoomPrice");
            String roomURL = request.getParameter("RoomImageUrl");
            System.out.println("Roomname add to cart :" + roomId);
            RoomDTO dto = new RoomDTO(Integer.parseInt(roomId),roomName,roomURL,Float.parseFloat(roomPrice),1);
            cart.addToCart(dto);
            System.out.println("dto room :" + dto.getRoomName());
            session.setAttribute("cart", cart);
        } catch (Exception e) {
            log("Error AddRoomToCart Controller"+ e.getMessage());
        }
        finally{
            request.getRequestDispatcher("HomeController").forward(request, response);
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
