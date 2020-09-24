/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
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
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblProductColor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblProductColor.findAll", query = "SELECT t FROM TblProductColor t")
    , @NamedQuery(name = "TblProductColor.findByPcolorId", query = "SELECT t FROM TblProductColor t WHERE t.pcolorId = :pcolorId")})
public class TblProductColor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "pcolor_id")
    private Integer pcolorId;
    @JoinColumn(name = "color_id", referencedColumnName = "color_id")
    @ManyToOne
    private TblColor colorId;
    @JoinColumn(name = "image_id", referencedColumnName = "image_id")
    @ManyToOne
    private TblImage imageId;
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    @ManyToOne
    private TblProduct productId;
    @OneToMany(mappedBy = "pcolorId")
    private Collection<TblProductColorSize> tblProductColorSizeCollection;

    public TblProductColor() {
    }

    public TblProductColor(Integer pcolorId) {
        this.pcolorId = pcolorId;
    }

    public Integer getPcolorId() {
        return pcolorId;
    }

    public void setPcolorId(Integer pcolorId) {
        this.pcolorId = pcolorId;
    }

    public TblColor getColorId() {
        return colorId;
    }

    public void setColorId(TblColor colorId) {
        this.colorId = colorId;
    }

    public TblImage getImageId() {
        return imageId;
    }

    public void setImageId(TblImage imageId) {
        this.imageId = imageId;
    }

    public TblProduct getProductId() {
        return productId;
    }

    public void setProductId(TblProduct productId) {
        this.productId = productId;
    }

    @XmlTransient
    public Collection<TblProductColorSize> getTblProductColorSizeCollection() {
        return tblProductColorSizeCollection;
    }

    public void setTblProductColorSizeCollection(Collection<TblProductColorSize> tblProductColorSizeCollection) {
        this.tblProductColorSizeCollection = tblProductColorSizeCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pcolorId != null ? pcolorId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblProductColor)) {
            return false;
        }
        TblProductColor other = (TblProductColor) object;
        if ((this.pcolorId == null && other.pcolorId != null) || (this.pcolorId != null && !this.pcolorId.equals(other.pcolorId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblProductColor[ pcolorId=" + pcolorId + " ]";
    }
    
}
