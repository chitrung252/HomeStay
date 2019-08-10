/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import tult.dtos.RoomDTO;

/**
 *
 * @author Chi Trung
 */
public class RoomMapper {

    public List<RoomDTO> mapperListRoom(ResultSet rs) throws Exception {
        List<RoomDTO> list = new ArrayList<>();
        RoomDTO dto = null;
        while (rs.next()) {
            dto = new RoomDTO(rs.getInt("RoomId"), rs.getString("RoomName"), rs.getDouble("Price"), rs.getInt("Quanlity"));
            list.add(dto);
        }
        return list;
    }
}
