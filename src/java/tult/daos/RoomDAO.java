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
import java.util.ArrayList;
import java.util.List;
import tult.common.Name;
import tult.db.MyConnection;
import tult.dtos.RoomDTO;;


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

   public  List<RoomDTO> getListRoom()throws Exception{
       List<RoomDTO> list = null;
       RoomDTO dto;
       try {
           conn = MyConnection.GetMyConnection();
           preStm = conn.prepareCall("{call sp_main_dbo_room_getListRooms}");;
           rs = preStm.executeQuery();
           list = new ArrayList<>();
           while(rs.next()){
               dto = new RoomDTO.RoomBuilder()
                       .RoomId(rs.getInt(Name.ROOMID))
                       .RoomName(rs.getString(Name.ROOMNAME))
                       .Price(rs.getFloat(Name.ROOMPRICE))
                       .Space(rs.getFloat(Name.ROOMSPACE))
                       .Desc(rs.getString(Name.ROOMDES))
                       .build();             
               list.add(dto);             

           }
       } finally{
           closeConnection();
       }
       return list;
   }
  
}
