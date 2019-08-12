/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.dtos;

import java.io.Serializable;

/**
 *
 * @author TuanTu
 */
public class RoomDTO implements Serializable{
    public String RoomId;
    public String RoomName;
    public String Price;
    public String Quanlity;
    public String Space;
    public String Desc;
    public RoomDTO() {
    }

    public RoomDTO(String RoomId, String RoomName, String Price, String Quanlity, String Space, String Desc) {
        this.RoomId = RoomId;
        this.RoomName = RoomName;
        this.Price = Price;
        this.Quanlity = Quanlity;
        this.Space = Space;
        this.Desc = Desc;
    }

    public RoomDTO(String RoomId, String RoomName, String Price, String Space, String Desc) {
        this.RoomId = RoomId;
        this.RoomName = RoomName;
        this.Price = Price;
        this.Space = Space;
        this.Desc = Desc;
    }
    
    public String getRoomId() {
        return RoomId;
    }

    public void setRoomId(String RoomId) {
        this.RoomId = RoomId;
    }

    public String getRoomName() {
        return RoomName;
    }

    public void setRoomName(String RoomName) {
        this.RoomName = RoomName;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String Price) {
        this.Price = Price;
    }

    public String getQuanlity() {
        return Quanlity;
    }

    public void setQuanlity(String Quanlity) {
        this.Quanlity = Quanlity;
    }

    public String getSpace() {
        return Space;
    }

    public void setSpace(String Space) {
        this.Space = Space;
    }

    public String getDesc() {
        return Desc;
    }

    public void setDesc(String Desc) {
        this.Desc = Desc;
    }

    
    
    
}
