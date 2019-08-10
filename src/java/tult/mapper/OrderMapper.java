/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import tult.common.ObjectClass;
import tult.dtos.OrderDTO;

/**
 *
 * @author Chi Trung
 */
public class OrderMapper {
     public List<OrderDTO> mapperListRoom(ResultSet rs) throws Exception {
        List<OrderDTO> list = new ArrayList<>();
        OrderDTO dto = null;
        while (rs.next()) {
            dto = new OrderDTO();
           dto.setRoomName(rs.getString(ObjectClass.RoomName));
           dto.setQuanlity(rs.getInt(ObjectClass.RoomQuanlity));
           dto.setOrderId(rs.getInt(ObjectClass.OrderId));
           dto.setOrderName(rs.getString(ObjectClass.OrderName));
           dto.setOrderDate(rs.getDate(ObjectClass.OrderDate));
           list.add(dto);
        }
        return list;
    }
}
