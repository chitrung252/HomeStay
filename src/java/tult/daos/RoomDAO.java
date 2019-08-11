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
 * @author TuanTu
 */
public class RoomDAO implements Serializable {

    PreparedStatement preStm;
    Connection conn;
    ResultSet rs;
   
    
    
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

   
  
}
