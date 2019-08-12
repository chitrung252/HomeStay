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
 * @author TuanTu
 */
public class UserDTO implements Serializable {

    private int userId;
    private String username;
    private String password;
    private String fullname;
    private String addressUser;
    private Date dayCreate;
    private String phone;
    private int roleId;
    private String roleName;
    private String email;
    private boolean isDelete;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public UserDTO() {
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddressUser() {
        return addressUser;
    }

    public void setAddressUser(String addressUser) {
        this.addressUser = addressUser;
    }

    public Date getDayCreate() {
        return dayCreate;
    }

    public void setDayCreate(Date dayCreate) {
        this.dayCreate = dayCreate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isIsDelete() {
        return isDelete;
    }

    public void setIsDelete(boolean isDelete) {
        this.isDelete = isDelete;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public static class UserBuilder {

        private int userId;
        private String username;
        private String password;
        private String fullname;
        private String addressUser;
        private Date dayCreate;
        private String phone;
        private int roleId;
        private String roleName;
        private String email;
        private boolean isDelete;

        public UserBuilder UserId(int userId) {
            this.userId = userId;
            return this;
        }

        public UserBuilder UserName(String username) {
            this.username = username;
            return this;
        }

        public UserBuilder Password(String password) {
            this.password = password;
            return this;
        }

        public UserBuilder AddressUser(String addressUser) {
            this.addressUser = addressUser;
            return this;
        }

        public UserBuilder DayCreate(Date dayCreate) {
            this.dayCreate = dayCreate;
            return this;
        }

        public UserBuilder Phone(String phone) {
            this.phone = phone;
            return this;
        }

        public UserBuilder FullName(String fullname) {
            this.fullname = fullname;
            return this;
        }

        public UserBuilder RoleId(int roleId) {
            this.roleId = roleId;
            return this;
        }

        public UserBuilder RoleName(String roleName) {
            this.roleName = roleName;
            return this;
        }

        public UserBuilder Email(String email) {
            this.email = email;
            return this;
        }

        public UserBuilder IsDelete(boolean isDelete) {
            this.isDelete = isDelete;
            return this;
        }

        public UserDTO build() {
            return new UserDTO(this);
        }
    }

    private UserDTO(UserBuilder builder) {
        userId = builder.userId;
        username = builder.username;
        password = builder.password;
        fullname = builder.fullname;
        addressUser = builder.addressUser;
        dayCreate = builder.dayCreate;
        phone = builder.phone;
        roleId = builder.roleId;
        roleName = builder.roleName;
        email = builder.email;
        isDelete = builder.isDelete;
    }
}
