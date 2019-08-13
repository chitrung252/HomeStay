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
import tult.admin.daos.ARoomDao;
import tult.common.UrlWebsite;
import tult.dtos.RoomDTO;

/**
 *
 * @author Chi Trung
 */
public class AManageRoomController extends HttpServlet {

    private ARoomDao dao = new ARoomDao();

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
        request.setCharacterEncoding("UTF-8");
        String url = UrlWebsite.ERROR;
        try {
            String action = request.getParameter("action");
            switch (action) {
                case "GetRoom":
                    url = getListRoom(request);
                    break;
                case "EditRoom":
                    int roomId = Integer.parseInt(request.getParameter("roomId"));
                    url = editRoom(request, roomId);
                    break;
                case "UpdateRoom":
                    url = updateRoom(request);
                    break;
                case "CreateRoom":
                    url = createRoom(request);
                    break;
                case "DeleteRoom":
                    url = deleteRoom(request);
                    break;
                default:
                    url = UrlWebsite.ERROR;
            }
        } catch (Exception e) {
            log("ERROR at AManageRoomController" + e.getMessage());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    public String getListRoom(HttpServletRequest request) throws Exception {
        String url = UrlWebsite.ERROR;
        List<RoomDTO> result = dao.getListRoom();
        if (result != null) {
            url = UrlWebsite.USER;
            request.setAttribute("LISTUSER", result);
        }
        return url;
    }

    public String editRoom(HttpServletRequest request, int id) throws Exception {
        String url = UrlWebsite.ERROR;
        RoomDTO dto = dao.editRoom(id);
        if (dto != null) {
            url = UrlWebsite.USERDETAIL;
            request.setAttribute("USER", dto);
        }
        return url;
    }

    public String createRoom(HttpServletRequest request) throws Exception {
        String url = UrlWebsite.ERROR;
        RoomDTO dto = new RoomDTO.RoomBuilder()
//                .RoomName(request.getParameter("txtRoomname"))
//                .Password(request.getParameter("txtPassword"))
//                .FullName(request.getParameter("txtFullname"))
//                .AddressRoom(request.getParameter("txtAddress"))
//                .Phone(request.getParameter("txtPhone"))
//                .Email(request.getParameter("txtEmail"))
//                .RoleId(Integer.parseInt(request.getParameter("slRoleId")))
//                .IsActive(Boolean.parseBoolean(request.getParameter("cbStatus")))
                .build();
        boolean check = dao.createRoom(dto);
        if (check) {
            url = getListRoom(request);
        }
        return url;
    }

    private String deleteRoom(HttpServletRequest request) throws Exception {
        String url = UrlWebsite.ERROR;
        int roomId = Integer.parseInt(request.getParameter("roomId"));
        boolean check = dao.deleteRoom(roomId);
        if (check) {
            url = getListRoom(request);
        }
        return url;
    }

    private String updateRoom(HttpServletRequest request) throws Exception {
        String url = UrlWebsite.ERROR;
        RoomDTO dto = new RoomDTO.RoomBuilder()
//                .RoomName(request.getParameter("txtRoomname"))
//                .Password(request.getParameter("txtPassword"))
//                .FullName(request.getParameter("txtFullname"))
//                .AddressRoom(request.getParameter("txtAddress"))
//                .Phone(request.getParameter("txtPhone"))
//                .Email(request.getParameter("txtEmail"))
//                .RoleId(Integer.parseInt(request.getParameter("slRoleId")))
//                .IsActive(Boolean.parseBoolean(request.getParameter("cbStatus")))
//                .RoomId(Integer.parseInt(request.getParameter("txtRoomId")))
                .build();
        boolean check = dao.updateRoom(dto);
        if (check) {
            url = getListRoom(request);
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
