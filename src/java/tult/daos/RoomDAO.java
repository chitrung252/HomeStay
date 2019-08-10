/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.daos;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import tult.db.MyConnection;
import tult.dtos.OrderDTO;
import tult.dtos.RoomDTO;
import tult.mapper.OrderMapper;
import tult.mapper.RoomMapper;

/**
 *
 * @author Chi Trung
 */
public class RoomDAO implements Serializable {

    PreparedStatement preStm;
    Connection conn;
    ResultSet rs;
    RoomMapper roomMapper;
    OrderMapper orderMapper;
    public RoomDAO() {
        roomMapper = new RoomMapper();
        orderMapper = new OrderMapper();
    }
    
    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (conn != null) {
            conn.close();
        }
        if (preStm != null) {
            conn.close();
        }
    }

    public List<RoomDTO> findAll(String[] param) throws Exception {
        List<RoomDTO> list = null;
        try {
             String sql = "Select "+ param[0] +" From " + param[1];
             conn = MyConnection.GetMyConnection();
             preStm = conn.prepareStatement(sql);
             rs = preStm.executeQuery();
             list = roomMapper.mapperListRoom(rs);
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<OrderDTO> findAllOrder(String[] param) throws Exception{
        List<OrderDTO> list = null;
        try {
             String sql = "Select "+ param[0] +" From " + param[1];
             conn = MyConnection.GetMyConnection();
             preStm = conn.prepareStatement(sql);
             rs = preStm.executeQuery();
             list = orderMapper.mapperListRoom(rs);
        } finally {
            closeConnection();
        }
        return list;
    }
}
