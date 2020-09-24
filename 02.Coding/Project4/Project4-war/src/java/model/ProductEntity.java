/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.validation.constraints.Size;

/**
 *
 * @author VĂN BÌNH
 */
public class ProductEntity {
    @Column(name = "product_id")
    private Integer productId;
    @Column(name = "product_name")
    private String productName;
    @Column(name = "product_code")
    private String productCode;
    @Column(name = "product_price")
    private BigDecimal productPrice;
    @Column(name = "product_style")
    private String productStyle;
    @Column(name = "product_description")
    private String productDescription;
    @Column(name = "product_active")
    private Integer productActive;
    @Column(name = "product_season")
    private String productSeason;
    @Column(name = "product_picture")
    private String productPicture;

    public ProductEntity() {
    }

    public ProductEntity(Integer productId, String productName, String productCode, BigDecimal productPrice, String productStyle, String productDescription, Integer productActive, String productSeason, String productPicture) {
        this.productId = productId;
        this.productName = productName;
        this.productCode = productCode;
        this.productPrice = productPrice;
        this.productStyle = productStyle;
        this.productDescription = productDescription;
        this.productActive = productActive;
        this.productSeason = productSeason;
        this.productPicture = productPicture;
    }

    /**
     * @return the productId
     */
    public Integer getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    /**
     * @return the productName
     */
    public String getProductName() {
        return productName;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * @return the productCode
     */
    public String getProductCode() {
        return productCode;
    }

    /**
     * @param productCode the productCode to set
     */
    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    /**
     * @return the productPrice
     */
    public BigDecimal getProductPrice() {
        return productPrice;
    }

    /**
     * @param productPrice the productPrice to set
     */
    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    /**
     * @return the productStyle
     */
    public String getProductStyle() {
        return productStyle;
    }

    /**
     * @param productStyle the productStyle to set
     */
    public void setProductStyle(String productStyle) {
        this.productStyle = productStyle;
    }

    /**
     * @return the productDescription
     */
    public String getProductDescription() {
        return productDescription;
    }

    /**
     * @param productDescription the productDescription to set
     */
    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    /**
     * @return the productActive
     */
    public Integer getProductActive() {
        return productActive;
    }

    /**
     * @param productActive the productActive to set
     */
    public void setProductActive(Integer productActive) {
        this.productActive = productActive;
    }

    /**
     * @return the productSeason
     */
    public String getProductSeason() {
        return productSeason;
    }

    /**
     * @param productSeason the productSeason to set
     */
    public void setProductSeason(String productSeason) {
        this.productSeason = productSeason;
    }

    /**
     * @return the productPicture
     */
    public String getProductPicture() {
        return productPicture;
    }

    /**
     * @param productPicture the productPicture to set
     */
    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }
    
}
