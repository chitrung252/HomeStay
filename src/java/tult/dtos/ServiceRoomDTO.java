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
 * @author Admin
 */
public class ServiceRoomDTO implements Serializable{
    private int ServiceId;
    private String NameService;
    private Date DateCreateService;
    private float PriceService;
    private boolean isDelete;

    public int getServiceId() {
        return ServiceId;
    }

    public void setServiceId(int ServiceId) {
        this.ServiceId = ServiceId;
    }

    public String getNameService() {
        return NameService;
    }

    public void setNameService(String NameService) {
        this.NameService = NameService;
    }

    public Date getDateCreateService() {
        return DateCreateService;
    }

    public void setDateCreateService(Date DateCreateService) {
        this.DateCreateService = DateCreateService;
    }

    public float getPriceService() {
        return PriceService;
    }

    public void setPriceService(float PriceService) {
        this.PriceService = PriceService;
    }

    public boolean isIsDelete() {
        return isDelete;
    }

    public void setIsDelete(boolean isDelete) {
        this.isDelete = isDelete;
    }
    public static class ServiceRoomBuilder {

   private int ServiceId;
    private String NameService;
    private Date DateCreateService;
    private float PriceService;
    private boolean isDelete;

        public ServiceRoomBuilder ServiceId(int serviceId) {
            this.ServiceId = serviceId;
            return this;
        }

        public ServiceRoomBuilder ServiceName(String serviceName) {
            this.NameService = serviceName;
            return this;
        }
        public ServiceRoomBuilder DateCreateService(Date dateCreateService) {
            this.DateCreateService = dateCreateService;
            return this;
        }
        public ServiceRoomBuilder PriceService(float priceService) {
            this.PriceService = priceService;
            return this;
        }

        public ServiceRoomBuilder IsDelete(boolean IsDelete) {
            this.isDelete = IsDelete;
            return this;
        }

     
        public ServiceRoomDTO build() {
            return new ServiceRoomDTO(this);
        }
    }

    public ServiceRoomDTO(ServiceRoomBuilder builder){
        this.ServiceId = builder.ServiceId;
        this.NameService = builder.NameService;
        this.PriceService = builder.PriceService;
        this.DateCreateService = builder.DateCreateService;
        this.isDelete = builder.isDelete;
        
    }
}
