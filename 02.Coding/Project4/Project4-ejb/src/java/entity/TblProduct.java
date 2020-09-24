/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author VĂN BÌNH
 */
@Entity
@Table(name = "tblProduct")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblProduct.findAll", query = "SELECT t FROM TblProduct t")
    , @NamedQuery(name = "TblProduct.findByProductId", query = "SELECT t FROM TblProduct t WHERE t.productId = :productId")
    , @NamedQuery(name = "TblProduct.findByProductName", query = "SELECT t FROM TblProduct t WHERE t.productName = :productName")
    , @NamedQuery(name = "TblProduct.findByProductCode", query = "SELECT t FROM TblProduct t WHERE t.productCode = :productCode")
    , @NamedQuery(name = "TblProduct.findByProductPrice", query = "SELECT t FROM TblProduct t WHERE t.productPrice = :productPrice")
    , @NamedQuery(name = "TblProduct.findByProductStyle", query = "SELECT t FROM TblProduct t WHERE t.productStyle = :productStyle")
    , @NamedQuery(name = "TblProduct.findByProductDescription", query = "SELECT t FROM TblProduct t WHERE t.productDescription = :productDescription")
    , @NamedQuery(name = "TblProduct.findByProductActive", query = "SELECT t FROM TblProduct t WHERE t.productActive = :productActive")
    , @NamedQuery(name = "TblProduct.findByProductSeason", query = "SELECT t FROM TblProduct t WHERE t.productSeason = :productSeason")
    , @NamedQuery(name = "TblProduct.findByProductPicture", query = "SELECT t FROM TblProduct t WHERE t.productPicture = :productPicture")})
public class TblProduct implements Serializable {

    @OneToMany(mappedBy = "productId")
    private Collection<TblProductColor> tblProductColorCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Integer productId;
    @Size(max = 150)
    @Column(name = "product_name")
    private String productName;
    @Size(max = 50)
    @Column(name = "product_code")
    private String productCode;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "product_price")
    private BigDecimal productPrice;
    @Size(max = 50)
    @Column(name = "product_style")
    private String productStyle;
    @Size(max = 2147483647)
    @Column(name = "product_description")
    private String productDescription;
    @Column(name = "product_active")
    private Integer productActive;
    @Size(max = 50)
    @Column(name = "product_season")
    private String productSeason;
    @Size(max = 50)
    @Column(name = "product_picture")
    private String productPicture;
    @JoinColumn(name = "discount_id", referencedColumnName = "discount_id")
    @ManyToOne
    private TblDiscount discountId;

    public TblProduct() {
    }

    public TblProduct(Integer productId) {
        this.productId = productId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public BigDecimal getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductStyle() {
        return productStyle;
    }

    public void setProductStyle(String productStyle) {
        this.productStyle = productStyle;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Integer getProductActive() {
        return productActive;
    }

    public void setProductActive(Integer productActive) {
        this.productActive = productActive;
    }

    public String getProductSeason() {
        return productSeason;
    }

    public void setProductSeason(String productSeason) {
        this.productSeason = productSeason;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }

    public TblDiscount getDiscountId() {
        return discountId;
    }

    public void setDiscountId(TblDiscount discountId) {
        this.discountId = discountId;
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
        if (!(object instanceof TblProduct)) {
            return false;
        }
        TblProduct other = (TblProduct) object;
        if ((this.productId == null && other.productId != null) || (this.productId != null && !this.productId.equals(other.productId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblProduct[ productId=" + productId + " ]";
    }

    @XmlTransient
    public Collection<TblProductColor> getTblProductColorCollection() {
        return tblProductColorCollection;
    }

    public void setTblProductColorCollection(Collection<TblProductColor> tblProductColorCollection) {
        this.tblProductColorCollection = tblProductColorCollection;
    }
    
}
