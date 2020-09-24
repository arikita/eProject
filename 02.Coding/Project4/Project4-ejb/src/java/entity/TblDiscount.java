/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblDiscount")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblDiscount.findAll", query = "SELECT t FROM TblDiscount t")
    , @NamedQuery(name = "TblDiscount.findByDiscountId", query = "SELECT t FROM TblDiscount t WHERE t.discountId = :discountId")
    , @NamedQuery(name = "TblDiscount.findByDiscountPrice", query = "SELECT t FROM TblDiscount t WHERE t.discountPrice = :discountPrice")
    , @NamedQuery(name = "TblDiscount.findByDiscountPercent", query = "SELECT t FROM TblDiscount t WHERE t.discountPercent = :discountPercent")
    , @NamedQuery(name = "TblDiscount.findByDiscountRole", query = "SELECT t FROM TblDiscount t WHERE t.discountRole = :discountRole")
    , @NamedQuery(name = "TblDiscount.findByDiscountDescription", query = "SELECT t FROM TblDiscount t WHERE t.discountDescription = :discountDescription")
    , @NamedQuery(name = "TblDiscount.findByDiscountTitle", query = "SELECT t FROM TblDiscount t WHERE t.discountTitle = :discountTitle")
    , @NamedQuery(name = "TblDiscount.findByDiscountStartDate", query = "SELECT t FROM TblDiscount t WHERE t.discountStartDate = :discountStartDate")
    , @NamedQuery(name = "TblDiscount.findByDiscountEndDate", query = "SELECT t FROM TblDiscount t WHERE t.discountEndDate = :discountEndDate")})
public class TblDiscount implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "discount_id")
    private Integer discountId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "discount_price")
    private BigDecimal discountPrice;
    @Column(name = "discount_percent")
    private Integer discountPercent;
    @Column(name = "discount_role")
    private Integer discountRole;
    @Size(max = 2147483647)
    @Column(name = "discount_description")
    private String discountDescription;
    @Size(max = 150)
    @Column(name = "discount_title")
    private String discountTitle;
    @Column(name = "discount_start_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date discountStartDate;
    @Column(name = "discount_end_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date discountEndDate;
    @OneToMany(mappedBy = "discountId")
    private Collection<TblWarehouse> tblWarehouseCollection;
    @OneToMany(mappedBy = "discountId")
    private Collection<TblProduct> tblProductCollection;

    public TblDiscount() {
    }

    public TblDiscount(Integer discountId) {
        this.discountId = discountId;
    }

    public Integer getDiscountId() {
        return discountId;
    }

    public void setDiscountId(Integer discountId) {
        this.discountId = discountId;
    }

    public BigDecimal getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(BigDecimal discountPrice) {
        this.discountPrice = discountPrice;
    }

    public Integer getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(Integer discountPercent) {
        this.discountPercent = discountPercent;
    }

    public Integer getDiscountRole() {
        return discountRole;
    }

    public void setDiscountRole(Integer discountRole) {
        this.discountRole = discountRole;
    }

    public String getDiscountDescription() {
        return discountDescription;
    }

    public void setDiscountDescription(String discountDescription) {
        this.discountDescription = discountDescription;
    }

    public String getDiscountTitle() {
        return discountTitle;
    }

    public void setDiscountTitle(String discountTitle) {
        this.discountTitle = discountTitle;
    }

    public Date getDiscountStartDate() {
        return discountStartDate;
    }

    public void setDiscountStartDate(Date discountStartDate) {
        this.discountStartDate = discountStartDate;
    }

    public Date getDiscountEndDate() {
        return discountEndDate;
    }

    public void setDiscountEndDate(Date discountEndDate) {
        this.discountEndDate = discountEndDate;
    }

    @XmlTransient
    public Collection<TblWarehouse> getTblWarehouseCollection() {
        return tblWarehouseCollection;
    }

    public void setTblWarehouseCollection(Collection<TblWarehouse> tblWarehouseCollection) {
        this.tblWarehouseCollection = tblWarehouseCollection;
    }

    @XmlTransient
    public Collection<TblProduct> getTblProductCollection() {
        return tblProductCollection;
    }

    public void setTblProductCollection(Collection<TblProduct> tblProductCollection) {
        this.tblProductCollection = tblProductCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (discountId != null ? discountId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblDiscount)) {
            return false;
        }
        TblDiscount other = (TblDiscount) object;
        if ((this.discountId == null && other.discountId != null) || (this.discountId != null && !this.discountId.equals(other.discountId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblDiscount[ discountId=" + discountId + " ]";
    }
    
}
