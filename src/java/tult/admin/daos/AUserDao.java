/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.admin.daos;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import tult.common.Name;
import tult.db.MyConnection;
import tult.dtos.UserDTO;

/**
 *
 * @author Chi Trung
 */
public class AUserDao implements Serializable {

    PreparedStatement preStm;
    Connection conn;
    ResultSet rs;
    List<UserDTO> result;
    UserDTO dto ;

    public AUserDao() {
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

    public List<UserDTO> getListUser() throws Exception {
        try {
            conn = MyConnection.GetMyConnection();
            preStm = conn.prepareCall("{call sp_admin_dbo_user_getListUsers }");
            rs = preStm.executeQuery();
            result = new ArrayList<>();
            while (rs.next()) {
                dto = new UserDTO.UserBuilder()
                        .UserId(rs.getInt(Name.USERID))
                        .UserName(rs.getString(Name.USERNAME))
                        .FullName(rs.getString(Name.FULLNAME))
                        .DayCreate(rs.getDate(Name.DAYCREATE))
                        .IsDelete(rs.getBoolean(Name.ISDELETE))
                        .RoleName(rs.getString(Name.ROLENAME)).build();
                result.add(dto);
            }
        } finally {
            closeConnection();
        }
        return result;
    }
    public UserDTO editUser(int id) throws Exception{
        try {
            conn = MyConnection.GetMyConnection();
            preStm = conn.prepareCall("{call sp_admin_dbo_user_getUserById(?)}");
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            if(rs.next()){
                dto = new UserDTO.UserBuilder()
                        .UserId(rs.getInt(Name.USERID))
                        .UserName(rs.getString(Name.USERNAME))
                        .FullName(rs.getString(Name.FULLNAME))
                        .AddressUser(rs.getString(Name.ADDRESSUSER))                       
                        .DayCreate(rs.getDate(Name.DAYCREATE))
                        .Phone(rs.getString(Name.PHONE))                       
                        .IsDelete(rs.getBoolean(Name.ISDELETE))
                        .RoleId(rs.getInt(Name.ROLEID)).build();              
            }
        } finally{
            closeConnection();
        }
        return dto;
    }
}
