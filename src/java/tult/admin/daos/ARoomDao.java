/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.admin.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import tult.dtos.RoomDTO;
import tult.dtos.UserDTO;

/**
 *
 * @author Chi Trung
 */
public class ARoomDao {
    PreparedStatement preStm;
    Connection conn;
    ResultSet rs;
    List<RoomDTO> result;
    UserDTO dto;

    public ARoomDao() {
        dto = null;
        result = null;
        result = new ArrayList<>();
    }

    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (conn != null) {
            conn.close();
        }
        if (preStm != null) {
            preStm.close();
        }
    }

    public List<RoomDTO> getListRoom() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public RoomDTO editRoom(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean createRoom(RoomDTO dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean deleteRoom(int roomId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean updateRoom(RoomDTO dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
