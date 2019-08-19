/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.dtos;

import java.io.Serializable;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class CartRoomObj implements Serializable{
    private String customerName;
   private HashMap<String,RoomDTO> cart;

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public HashMap<String, RoomDTO> getCart() {
        return cart;
    }

    public void setCart(HashMap<String, RoomDTO> cart) {
        this.cart = cart;
    }
   
   public CartRoomObj(){
       this.customerName = "Guest";
       this.cart = new HashMap<>();
   }
     public CartRoomObj(String customeName){
       this.customerName = customeName;
       this.cart = new HashMap<>();
   }
      public  void addToCart(RoomDTO dto) throws Exception{
        if(this.cart.containsKey(dto.getRoomId()+"")){
        int quality = this.cart.get(dto.getRoomId()+"").getQuanlity()+1;
            dto.setQuanlity(quality);
        }
        this.cart.put(dto.getRoomId()+"",dto);
    }
    public void remove(String id)throws Exception{
        this.cart.remove(id);
    }
    public  float  getTotal(){
        float result = 0;
        for (RoomDTO dto : this.cart.values()) {
            result+=dto.getQuanlity()*dto.getPrice();
        }
        return result;
    }
}
