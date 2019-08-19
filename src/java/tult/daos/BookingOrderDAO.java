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
import tult.db.MyConnection;
/**
 *
 * @author Admin
 */
public class BookingOrderDAO implements Serializable{
    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public BookingOrderDAO() {
    }
    public  void closeConnection() throws Exception{
        if(rs!=null){
            rs.close();
        }
        if(preStm!=null){
            preStm.close();
        }
        if(conn!=null){
            conn.close();
        }
    }
    public  boolean  AddBookingOrder(int customerId,int roomId,int status) throws Exception{
        boolean result = false;
        try {
            conn = MyConnection.GetMyConnection();
            preStm = conn.prepareCall("{call sp_main_dbo_OrderBooking_addOrder(?,?,?)}");;
            preStm.setInt(1,customerId);
            preStm.setInt(2,roomId);
            preStm.setInt(3,status);
            result = preStm.executeUpdate()>0;
        } finally{
            closeConnection();
        }
         return result;
    }
}
