/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import tult.common.Name;
import tult.db.MyConnection;
import tult.dtos.FoodDTO;

/**
 *
 * @author Admin
 */
public class FoodDAO {
    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public FoodDAO() {
    }
    private void closeConnection() throws Exception{
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
     public List<FoodDTO> getListFood() throws Exception{
         List<FoodDTO> list =null;
         FoodDTO dto;
         try {
             conn = MyConnection.GetMyConnection();
             preStm = conn.prepareCall("{call sp_main_dbo_food_getListFoods}");;
             rs = preStm.executeQuery();
             list = new ArrayList<>();
             String foodId,foodName,foodPrice,foodImage;
             while(rs.next()){
                 foodId = rs.getString(Name.FOODID);
                 foodName = rs.getString(Name.FOODIMAGE);
                 foodPrice = rs.getString(Name.FOODPRICE);
                 foodImage = rs.getString(Name.FOODIMAGE);
                 dto = new FoodDTO(foodId, foodName, foodPrice, foodImage);
                 list.add(dto);
             }
         }finally{
             closeConnection();
         }
        return list; 
     }
}
