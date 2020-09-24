/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Column;
import javax.validation.constraints.Size;

/**
 *
 * @author VĂN BÌNH
 */
public class DistrictEntity {
    @Column(name = "district_id")
    private Integer districtId;
    @Column(name = "district_name")
    private String districtName;

    public DistrictEntity() {
    }

    public DistrictEntity(Integer districtId, String districtName) {
        this.districtId = districtId;
        this.districtName = districtName;
    }

    /**
     * @return the districtId
     */
    public Integer getDistrictId() {
        return districtId;
    }

    /**
     * @param districtId the districtId to set
     */
    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    /**
     * @return the districtName
     */
    public String getDistrictName() {
        return districtName;
    }

    /**
     * @param districtName the districtName to set
     */
    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }
    
}
