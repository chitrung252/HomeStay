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
    public String RoomPrice;
    public String Quanlity;
    public String RoomSpace;
    public String RoomDes;
    public RoomDTO() {
    }

    public RoomDTO(String RoomId, String RoomName, String RoomPrice, String Quanlity, String RoomSpace, String RoomDes) {
        this.RoomId = RoomId;
        this.RoomName = RoomName;
        this.RoomPrice = RoomPrice;
        this.Quanlity = Quanlity;
        this.RoomSpace = RoomSpace;
        this.RoomDes = RoomDes;
    }

    public RoomDTO(String RoomId, String RoomName, String RoomPrice, String RoomSpace, String RoomDes) {
        this.RoomId = RoomId;
        this.RoomName = RoomName;
        this.RoomPrice = RoomPrice;
        this.RoomSpace = RoomSpace;
        this.RoomDes = RoomDes;
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

    public String getRoomPrice() {
        return RoomPrice;
    }

    public void setRoomPrice(String RoomPrice) {
        this.RoomPrice = RoomPrice;
    }

    public String getQuanlity() {
        return Quanlity;
    }

    public void setQuanlity(String Quanlity) {
        this.Quanlity = Quanlity;
    }

    public String getRoomSpace() {
        return RoomSpace;
    }

    public void setRoomSpace(String RoomSpace) {
        this.RoomSpace = RoomSpace;
    }

    public String getRoomDes() {
        return RoomDes;
    }

    public void setRoomDes(String RoomDes) {
        this.RoomDes = RoomDes;
    }

    

    
    
    
}
