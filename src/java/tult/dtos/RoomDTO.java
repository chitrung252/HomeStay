/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.dtos;

import java.io.Serializable;

/**
 *
 * @author Chi Trung
 */
public class RoomDTO implements Serializable{
    public int RoomId;
    public String RoomName;
    public double Price;
    public int Quanlity;

    public RoomDTO() {
    }

    public RoomDTO(int RoomId, String RoomName, double Price, int Quanlity) {
        this.RoomId = RoomId;
        this.RoomName = RoomName;
        this.Price = Price;
        this.Quanlity = Quanlity;
    }

    public int getRoomId() {
        return RoomId;
    }

    public void setRoomId(int RoomId) {
        this.RoomId = RoomId;
    }

    public String getRoomName() {
        return RoomName;
    }

    public void setRoomName(String RoomName) {
        this.RoomName = RoomName;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public int getQuanlity() {
        return Quanlity;
    }

    public void setQuanlity(int Quanlity) {
        this.Quanlity = Quanlity;
    }

    
    
}
