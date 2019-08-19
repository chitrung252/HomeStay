/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.daos;

import java.beans.Statement;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import tult.common.Name;
import tult.db.MyConnection;

/**
 *
 * @author Admin
 */
public class CustomerDAO implements Serializable {

    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public CustomerDAO() {
    }

    private void closeConnetion() throws Exception {
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

    public int AddCustomerOrder(String fullName, String cmnd, String phone, String email) throws Exception {
        int result = 0;
        try {
            conn = MyConnection.GetMyConnection();
            preStm = conn.prepareCall("{call sp_main_dbo_customer_addCustomer(?,?,?,?)}");;
            preStm.setString(1, fullName);
            preStm.setString(2, cmnd);
            preStm.setString(3, phone);
            preStm.setString(4, email);
            preStm.executeUpdate();
            rs = preStm.getGeneratedKeys();
            long key = rs.next() ? rs.getInt(1) : 0;
            if (key != 0) {
                System.out.println("Generated key=" + key);
            }
        } finally {
            closeConnetion();
        }
        return result;
    }

    public int getCustomerId(String fullName, String cmnd, String phone, String email) throws Exception {
        int customerId = 0;
        try {
            conn = MyConnection.GetMyConnection();
            preStm = conn.prepareStatement("Select CustomerId from Customer Where CMND =? and Fullname = ? and Phone = ? and Email = ?");
            preStm.setString(1, cmnd);
            preStm.setString(2, fullName);
            preStm.setString(3, phone);
            preStm.setString(4, email);
            preStm.executeQuery();
            while (rs.next()) {
                customerId = rs.getInt(Name.CUSTOMERID);
                System.out.println("customer Id :" + customerId);
            }
        } finally {
            closeConnetion();
        }
        return customerId;
    }
}
