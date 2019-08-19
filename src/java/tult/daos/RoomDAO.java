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
import tult.dtos.OrderDTO;
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
        if (preStm != null) {
            preStm.close();
        }
        if (conn != null) {
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
//           int RoomId;
//           String RoomName,RoomTmp1,RoomDesc;
//           float RoomPrice,RoomSpace;
           while(rs.next()){
//             RoomId  = rs.getInt(Name.ROOMID);
//             RoomName = rs.getString(Name.ROOMNAME);
//             RoomPrice = rs.getFloat(Name.ROOMPRICE);
//             RoomSpace = rs.getFloat(Name.ROOMSPACE);
//             RoomDesc = rs.getString(Name.ROOMSPACE);
//             RoomTmp1 = rs.getString(Name.TMP1);
               dto = new RoomDTO.RoomBuilder()
                       .RoomId(rs.getInt(Name.ROOMID))
                       .RoomName(rs.getString(Name.ROOMNAME))
                       .Price(rs.getFloat(Name.ROOMPRICE))
                       .RoomTmp1(rs.getString(Name.TMP1))
                       .RoomTmp2(rs.getString(Name.TMP2))
                       .RoomTmp3(rs.getString(Name.TMP3))
                       .ImageUrl(rs.getString(Name.ImageURL))
                       .Space(rs.getFloat(Name.ROOMSPACE))
                       .Desc(rs.getString(Name.ROOMDES))
                       .build(); 
               
//               dto = new RoomDTO(RoomId, RoomName, RoomTmp1, RoomPrice, RoomSpace, RoomDesc);
//               System.out.println("list room " + dto.getRoomName());
               list.add(dto);             

           }
       } finally{
           closeConnection();
       }
       return list;
   }
  public RoomDTO getRoomById(int roomId) throws Exception {
      RoomDTO dto = null ;
      try {
          conn = MyConnection.GetMyConnection();
          preStm = conn.prepareCall("{call sp_main_dbo_room_getRoom_ById(?)}");;
          preStm.setInt(1, roomId);
          rs = preStm.executeQuery();           
          if(rs.next()){
              dto = new RoomDTO.RoomBuilder()
                       .RoomId(rs.getInt(Name.ROOMID))
                       .RoomName(rs.getString(Name.ROOMNAME))
                       .Price(rs.getFloat(Name.ROOMPRICE))
                       .RoomTmp1(rs.getString(Name.TMP1))
                       .RoomTmp2(rs.getString(Name.TMP2))
                       .RoomTmp3(rs.getString(Name.TMP3))
                       .ImageUrl(rs.getString(Name.ImageURL))
                       .Space(rs.getFloat(Name.ROOMSPACE))
                       .Desc(rs.getString(Name.ROOMDES))
                       .build();     
              System.out.println("ImageUrl "  + dto.imageUrl);
          }
      } finally{
          closeConnection();
      }
      return dto;
  }
}
