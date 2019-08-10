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
import tult.common.Name;
import tult.db.MyConnection;

/**
 *
 * @author Chi Trung
 */
public class UserDAO implements Serializable {

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

    public UserDAO() {
    }

    public String[] checkLogin(String username, String password) throws Exception {
        String check[] = new String[2];
        try {
            conn = MyConnection.GetMyConnection();
            preStm = conn.prepareCall("{call sp_checkLogin(?,?)}");;
            preStm.setString(1, username);
            preStm.setString(2, password);
            rs = preStm.executeQuery();
            if(rs.next()){
                check[0] = rs.getString(Name.ROLENAME);
                check[1] = rs.getString(Name.FULLNAME);
            }
        } finally {
            closeConnection();
        }
        return check;
    }
}
