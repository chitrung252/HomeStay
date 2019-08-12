/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tult.dtos;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class FoodDTO implements Serializable{
    private String FoodId;
    private String FoodName;
    private String FoodPrice;
    private String FoodImage;

    public FoodDTO() {
    }

    public FoodDTO(String FoodId, String FoodName, String FoodPrice, String FoodImage) {
        this.FoodId = FoodId;
        this.FoodName = FoodName;
        this.FoodPrice = FoodPrice;
        this.FoodImage = FoodImage;
    }
    
    public String getFoodId() {
        return FoodId;
    }

    public void setFoodId(String FoodId) {
        this.FoodId = FoodId;
    }

    public String getFoodName() {
        return FoodName;
    }

    public void setFoodName(String FoodName) {
        this.FoodName = FoodName;
    }

    public String getFoodPrice() {
        return FoodPrice;
    }

    public void setFoodPrice(String FoodPrice) {
        this.FoodPrice = FoodPrice;
    }

    public String getFoodImage() {
        return FoodImage;
    }

    public void setFoodImage(String FoodImage) {
        this.FoodImage = FoodImage;
    }

    
    
}
