/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
    public static final Connection GetMyConnection() throws Exception{
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433; databaseName= DBMyBookHomeStay", "sa","123456");
        return conn;
    }
}
