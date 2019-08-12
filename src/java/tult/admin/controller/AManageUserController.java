/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.admin.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tult.admin.daos.AUserDao;
import tult.common.UrlWebsite;
import tult.dtos.UserDTO;

/**
 *
 * @author Chi Trung
 */
public class AManageUserController extends HttpServlet {

    private AUserDao dao = new AUserDao();

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
        String url = UrlWebsite.ERROR;
        try {
            String action = request.getParameter("action");
           
            switch (action) {
                case "GetUser":
                    url = getListUser(request);
                    break;
                case "EditUser":
                    int userId = Integer.parseInt(request.getParameter("userId"));
                    url = editUser(request, userId);
                    break;
                default:
                    url = UrlWebsite.ERROR;
            }
        } catch (Exception e) {
            log("ERROR at AManageUserController" + e.getMessage());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    public String getListUser(HttpServletRequest request) throws Exception {
        String url = UrlWebsite.ERROR;
        List<UserDTO> result = dao.getListUser();
        if (result != null) {
            url = UrlWebsite.USER;
            request.setAttribute("LISTUSER", result);
        }
        return url;
    }
    public String editUser(HttpServletRequest request, int id) throws Exception{
        String url = UrlWebsite.ERROR;
        UserDTO dto = dao.editUser(id);
        if(dto != null){
            url = UrlWebsite.USERDETAIL;
            request.setAttribute("USER", dto);
        }
        return url;
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
