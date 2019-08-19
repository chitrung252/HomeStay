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
    public String roomTmp1;
    public String roomTmp2;
    public String roomTmp3;
    public String imageUrl;
    public float price;
    public int quanlity;
    public float space;
    public String desc;
    public boolean isDelete;
    public boolean isActive;
    
    public RoomDTO() {
    }

    public RoomDTO(int roomId, String roomName, String roomTmp1, float price, float space, String desc) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomTmp1 = roomTmp1;
        this.price = price;
        this.space = space;
        this.desc = desc;
    }

    public RoomDTO(int roomId, String roomName, String roomTmp1, float price, int quanlity) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomTmp1 = roomTmp1;
        this.price = price;
        this.quanlity = quanlity;
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

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
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

    public String getRoomTmp1() {
        return roomTmp1;
    }

    public String getRoomTmp2() {
        return roomTmp2;
    }

    public void setRoomTmp2(String roomTmp2) {
        this.roomTmp2 = roomTmp2;
    }

    public String getRoomTmp3() {
        return roomTmp3;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    
    public void setRoomTmp3(String roomTmp3) {
        this.roomTmp3 = roomTmp3;
    }
    
    public void setRoomTmp1(String roomTmp1) {
        this.roomTmp1 = roomTmp1;
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
        public String roomTmp1;
        public String roomTmp2;
        public String roomTmp3;
        public String imageUrl;
        public float price;
        public int quanlity;
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
        public RoomBuilder RoomTmp1(String roomTmp1) {
            this.roomTmp1 = roomTmp1;
            return this;
        }
        public RoomBuilder RoomTmp2(String roomTmp2) {
            this.roomTmp2 = roomTmp2;
            return this;
        }
        public RoomBuilder RoomTmp3(String roomTmp3) {
            this.roomTmp3 = roomTmp3;
            return this;
        }
        public RoomBuilder ImageUrl(String imageUrl) {
            this.imageUrl = imageUrl;
            return this;
        }
        public RoomBuilder Price(float price) {
            this.price = price;
            return this;
        }

        public RoomBuilder Quanlity(int quanlity) {
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
        this.roomTmp1 = builder.roomTmp1;
        this.roomTmp2 = builder.roomTmp2;
        this.roomTmp3 = builder.roomTmp3;
        this.imageUrl = builder.imageUrl;
        this.quanlity = builder.quanlity;
        this.space = builder.space;
        this.desc = builder.desc;
        this.isDelete = builder.isDelete;
        this.isActive = builder.isActive;
    }

}
