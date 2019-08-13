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

public class RoomDTO implements Serializable {

    public int roomId;
    public String roomName;
    public float price;
    public String quanlity;
    public float space;
    public String desc;
    public boolean isDelete;
    public boolean isActive;

    public RoomDTO() {
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(String quanlity) {
        this.quanlity = quanlity;
    }

    public float getSpace() {
        return space;
    }

    public void setSpace(float space) {
        this.space = space;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public boolean isIsDelete() {
        return isDelete;
    }

    public void setIsDelete(boolean isDelete) {
        this.isDelete = isDelete;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
  
    public static class RoomBuilder {

        public int roomId;
        public String roomName;
        public float price;
        public String quanlity;
        public float space;
        public String desc;
        public boolean isDelete;
        public boolean isActive;

        public RoomBuilder RoomId(int roomId) {
            this.roomId = roomId;
            return this;
        }

        public RoomBuilder RoomName(String roomName) {
            this.roomName = roomName;
            return this;
        }

        public RoomBuilder Price(float price) {
            this.price = price;
            return this;
        }

        public RoomBuilder Quanlity(String quanlity) {
            this.quanlity = quanlity;
            return this;
        }

        public RoomBuilder Space(float space) {
            this.space = space;
            return this;
        }

        public RoomBuilder Desc(String desc) {
            this.desc = desc;
            return this;
        }

        public RoomBuilder IsDelete(boolean isDelete) {
            this.isDelete = isDelete;
            return this;
        }

        public RoomBuilder IsActive(boolean isActive) {
            this.isActive = isActive;
            return this;
        }

        public RoomDTO build() {
            return new RoomDTO(this);
        }
    }

    public RoomDTO(RoomBuilder builder) {
        this.roomId = builder.roomId;
        this.roomName = builder.roomName;
        this.price = builder.price;
        this.quanlity = builder.quanlity;
        this.space = builder.space;
        this.desc = builder.desc;
        this.isDelete = builder.isDelete;
        this.isActive = builder.isActive;
    }

}
