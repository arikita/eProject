/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblWarehouse")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblWarehouse.findAll", query = "SELECT t FROM TblWarehouse t")
    , @NamedQuery(name = "TblWarehouse.findByWarehouseId", query = "SELECT t FROM TblWarehouse t WHERE t.warehouseId = :warehouseId")
    , @NamedQuery(name = "TblWarehouse.findByWarehouseQuantity", query = "SELECT t FROM TblWarehouse t WHERE t.warehouseQuantity = :warehouseQuantity")
    , @NamedQuery(name = "TblWarehouse.findByWarehouseDate", query = "SELECT t FROM TblWarehouse t WHERE t.warehouseDate = :warehouseDate")})
public class TblWarehouse implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "warehouse_id")
    private Integer warehouseId;
    @Column(name = "warehouse_quantity")
    private Integer warehouseQuantity;
    @Column(name = "warehouse_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date warehouseDate;
    @OneToMany(mappedBy = "warehouseId")
    private Collection<TblCart> tblCartCollection;
    @JoinColumn(name = "discount_id", referencedColumnName = "discount_id")
    @ManyToOne
    private TblDiscount discountId;
    @JoinColumn(name = "icheck_id", referencedColumnName = "icheck_id")
    @ManyToOne(optional = false)
    private TblImportCheck icheckId;

    public TblWarehouse() {
    }

    public TblWarehouse(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    public Integer getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }

    public Integer getWarehouseQuantity() {
        return warehouseQuantity;
    }

    public void setWarehouseQuantity(Integer warehouseQuantity) {
        this.warehouseQuantity = warehouseQuantity;
    }

    public Date getWarehouseDate() {
        return warehouseDate;
    }

    public void setWarehouseDate(Date warehouseDate) {
        this.warehouseDate = warehouseDate;
    }

    @XmlTransient
    public Collection<TblCart> getTblCartCollection() {
        return tblCartCollection;
    }

    public void setTblCartCollection(Collection<TblCart> tblCartCollection) {
        this.tblCartCollection = tblCartCollection;
    }

    public TblDiscount getDiscountId() {
        return discountId;
    }

    public void setDiscountId(TblDiscount discountId) {
        this.discountId = discountId;
    }

    public TblImportCheck getIcheckId() {
        return icheckId;
    }

    public void setIcheckId(TblImportCheck icheckId) {
        this.icheckId = icheckId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (warehouseId != null ? warehouseId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblWarehouse)) {
            return false;
        }
        TblWarehouse other = (TblWarehouse) object;
        if ((this.warehouseId == null && other.warehouseId != null) || (this.warehouseId != null && !this.warehouseId.equals(other.warehouseId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblWarehouse[ warehouseId=" + warehouseId + " ]";
    }
    
}
