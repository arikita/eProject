/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;


public class ColorEntity {
    @Column(name = "color_id")
    private Integer colorId;
    @Column(name = "color_name")
    private String colorName;

    public ColorEntity() {
    }

    public ColorEntity(Integer colorId, String colorName) {
        this.colorId = colorId;
        this.colorName = colorName;
    }

    /**
     * @return the colorId
     */
    public Integer getColorId() {
        return colorId;
    }

    /**
     * @param colorId the colorId to set
     */
    public void setColorId(Integer colorId) {
        this.colorId = colorId;
    }

    /**
     * @return the colorName
     */
    public String getColorName() {
        return colorName;
    }

    /**
     * @param colorName the colorName to set
     */
    public void setColorName(String colorName) {
        this.colorName = colorName;
    }
   
    
}
