/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.dtos;

/**
 *
 * @author Admin
 */
public class CustomerDTO {
    private int CustomerId;
    private String CodeRoom;
    private String FullName;
    private String CMND;
    private String Phone;
    private String Email;

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int CustomerId) {
        this.CustomerId = CustomerId;
    }

    public String getCodeRoom() {
        return CodeRoom;
    }

    public void setCodeRoom(String CodeRoom) {
        this.CodeRoom = CodeRoom;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getCMND() {
        return CMND;
    }

    public void setCMND(String CMND) {
        this.CMND = CMND;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
   public  static class CustomerBuilder{
    private int customerId;
    private String codeRoom;
    private String fullName;
    private String cMND;
    private String phone;
    private String email;

       public CustomerBuilder RoomId(int customerId) {
            this.customerId = customerId;
            return this;
        }

        public CustomerBuilder CodeRoom(String codeRoom) {
            this.codeRoom = codeRoom;
            return this;
        }
        public CustomerBuilder FullName(String fullname) {
            this.fullName = fullname;
            return this;
        }
        public CustomerBuilder CMND(String cmnd) {
            this.cMND = cmnd;
            return this;
        }
        public CustomerBuilder Phone(String phone) {
            this.phone = codeRoom;
            return this;
        }
        public CustomerBuilder Email(String email) {
            this.email = email;
            return this;
        }
         public CustomerDTO build() {
            return new CustomerDTO(this);
        } 
    
   }
    public CustomerDTO(CustomerBuilder builder) {
        this.CustomerId = builder.customerId;
        this.CodeRoom = builder.codeRoom;
        this.FullName = builder.fullName;
        this.CMND = builder.cMND;
        this.Phone = builder.phone;
        this.Email = builder.email;
        
    }

}
