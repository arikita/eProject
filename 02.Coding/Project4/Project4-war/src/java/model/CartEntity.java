/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.TblAdmin;
import entity.TblCustomer;
import entity.TblWarehouse;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author VĂN BÌNH
 */
public class CartEntity {
    @Column(name = "product_id")
    private Integer productId;
    @Column(name = "cart_quantity")
    private Integer cartQuantity;
    @Column(name = "cart_start_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date cartStartDate;
    @Column(name = "cart_warranty_end_date")
    private Integer cartWarrantyEndDate;
    @Column(name = "color_id")
    private Integer colorId;
    @Column(name = "size_id")
    private Integer sizeId;
    @JoinColumn(name = "admin_id", referencedColumnName = "admin_id")
    @ManyToOne
    private TblAdmin adminId;
    @JoinColumn(name = "customer_id", referencedColumnName = "customer_id")
    @ManyToOne
    private TblCustomer customerId;
    @JoinColumn(name = "warehouse_id", referencedColumnName = "warehouse_id")
    @ManyToOne
    private TblWarehouse warehouseId;

    public CartEntity() {
    }

    public CartEntity(Integer productId, Integer cartQuantity, Date cartStartDate, Integer cartWarrantyEndDate, Integer colorId, Integer sizeId, TblAdmin adminId, TblCustomer customerId, TblWarehouse warehouseId) {
        this.productId = productId;
        this.cartQuantity = cartQuantity;
        this.cartStartDate = cartStartDate;
        this.cartWarrantyEndDate = cartWarrantyEndDate;
        this.colorId = colorId;
        this.sizeId = sizeId;
        this.adminId = adminId;
        this.customerId = customerId;
        this.warehouseId = warehouseId;
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
     * @return the cartQuantity
     */
    public Integer getCartQuantity() {
        return cartQuantity;
    }

    /**
     * @param cartQuantity the cartQuantity to set
     */
    public void setCartQuantity(Integer cartQuantity) {
        this.cartQuantity = cartQuantity;
    }

    /**
     * @return the cartStartDate
     */
    public Date getCartStartDate() {
        return cartStartDate;
    }

    /**
     * @param cartStartDate the cartStartDate to set
     */
    public void setCartStartDate(Date cartStartDate) {
        this.cartStartDate = cartStartDate;
    }

    /**
     * @return the cartWarrantyEndDate
     */
    public Integer getCartWarrantyEndDate() {
        return cartWarrantyEndDate;
    }

    /**
     * @param cartWarrantyEndDate the cartWarrantyEndDate to set
     */
    public void setCartWarrantyEndDate(Integer cartWarrantyEndDate) {
        this.cartWarrantyEndDate = cartWarrantyEndDate;
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
     * @return the sizeId
     */
    public Integer getSizeId() {
        return sizeId;
    }

    /**
     * @param sizeId the sizeId to set
     */
    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    /**
     * @return the adminId
     */
    public TblAdmin getAdminId() {
        return adminId;
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(TblAdmin adminId) {
        this.adminId = adminId;
    }

    /**
     * @return the customerId
     */
    public TblCustomer getCustomerId() {
        return customerId;
    }

    /**
     * @param customerId the customerId to set
     */
    public void setCustomerId(TblCustomer customerId) {
        this.customerId = customerId;
    }

    /**
     * @return the warehouseId
     */
    public TblWarehouse getWarehouseId() {
        return warehouseId;
    }

    /**
     * @param warehouseId the warehouseId to set
     */
    public void setWarehouseId(TblWarehouse warehouseId) {
        this.warehouseId = warehouseId;
    }
    
}
