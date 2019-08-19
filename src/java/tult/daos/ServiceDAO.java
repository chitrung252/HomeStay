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
import tult.dtos.ServiceRoomDTO;
/**
 *
 * @author Admin
 */
public class ServiceDAO implements Serializable{
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
     public  List<ServiceRoomDTO> getListServiceRoom()throws Exception{
       List<ServiceRoomDTO> list = null;
       ServiceRoomDTO dto;
       try {
           conn = MyConnection.GetMyConnection();
           preStm = conn.prepareCall("{call sp_main_dbo_service_room_getListService}");;
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
               dto = new ServiceRoomDTO.ServiceRoomBuilder()
                       .ServiceId(rs.getInt(Name.SERVICEID))
                       .ServiceName(rs.getString(Name.SERVICENAME))
                       .PriceService(rs.getFloat(Name.PRICESERVICE))
                       .DateCreateService(rs.getDate(Name.DATECREATESERVICE))
                       .IsDelete(rs.getBoolean(Name.ISDELETE))
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
     public  List<ServiceRoomDTO> getListServiceByRoomId(int RoomId)throws Exception{
       List<ServiceRoomDTO> list = null;
       ServiceRoomDTO dto;
       try {
           conn = MyConnection.GetMyConnection();
           preStm = conn.prepareCall("{call sp_main_dbo_getService_byRoomId(?)}");;
           preStm.setString(1, RoomId+"");
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
               dto = new ServiceRoomDTO.ServiceRoomBuilder()
                       .ServiceName(rs.getString(Name.SERVICENAME))
                       .PriceService(rs.getFloat(Name.PRICESERVICE))
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
     
  
}
