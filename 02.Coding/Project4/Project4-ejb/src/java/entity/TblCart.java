/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author VĂN BÌNH
 */
@Entity
@Table(name = "tblCart")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblCart.findAll", query = "SELECT t FROM TblCart t")
    , @NamedQuery(name = "TblCart.findByProductId", query = "SELECT t FROM TblCart t WHERE t.productId = :productId")
    , @NamedQuery(name = "TblCart.findByCartQuantity", query = "SELECT t FROM TblCart t WHERE t.cartQuantity = :cartQuantity")
    , @NamedQuery(name = "TblCart.findByCartStartDate", query = "SELECT t FROM TblCart t WHERE t.cartStartDate = :cartStartDate")
    , @NamedQuery(name = "TblCart.findByCartWarrantyEndDate", query = "SELECT t FROM TblCart t WHERE t.cartWarrantyEndDate = :cartWarrantyEndDate")
    , @NamedQuery(name = "TblCart.findByColorId", query = "SELECT t FROM TblCart t WHERE t.colorId = :colorId")
    , @NamedQuery(name = "TblCart.findBySizeId", query = "SELECT t FROM TblCart t WHERE t.sizeId = :sizeId")})
public class TblCart implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
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

    public TblCart() {
    }

    public TblCart(Integer productId) {
        this.productId = productId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getCartQuantity() {
        return cartQuantity;
    }

    public void setCartQuantity(Integer cartQuantity) {
        this.cartQuantity = cartQuantity;
    }

    public Date getCartStartDate() {
        return cartStartDate;
    }

    public void setCartStartDate(Date cartStartDate) {
        this.cartStartDate = cartStartDate;
    }

    public Integer getCartWarrantyEndDate() {
        return cartWarrantyEndDate;
    }

    public void setCartWarrantyEndDate(Integer cartWarrantyEndDate) {
        this.cartWarrantyEndDate = cartWarrantyEndDate;
    }

    public Integer getColorId() {
        return colorId;
    }

    public void setColorId(Integer colorId) {
        this.colorId = colorId;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public TblAdmin getAdminId() {
        return adminId;
    }

    public void setAdminId(TblAdmin adminId) {
        this.adminId = adminId;
    }

    public TblCustomer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(TblCustomer customerId) {
        this.customerId = customerId;
    }

    public TblWarehouse getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(TblWarehouse warehouseId) {
        this.warehouseId = warehouseId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productId != null ? productId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblCart)) {
            return false;
        }
        TblCart other = (TblCart) object;
        if ((this.productId == null && other.productId != null) || (this.productId != null && !this.productId.equals(other.productId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblCart[ productId=" + productId + " ]";
    }
    
}
