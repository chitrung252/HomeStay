/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.dtos;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author Chi Trung
 */
public class OrderDTO extends RoomDTO implements Serializable{
    public int OrderId;
    public String OrderName;
    public Date OrderDate;
    
    public OrderDTO() {
    }

    public OrderDTO(int OrderId, String OrderName, Date OrderDate, int RoomId, String RoomName, double Price, int Quanlity) {
        super(RoomId, RoomName, Price, Quanlity);
        this.OrderId = OrderId;
        this.OrderName = OrderName;
        this.OrderDate = OrderDate;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public String getOrderName() {
        return OrderName;
    }

    public void setOrderName(String OrderName) {
        this.OrderName = OrderName;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }    
}
