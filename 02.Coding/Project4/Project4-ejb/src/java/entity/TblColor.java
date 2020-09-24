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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
 * @author Windows 18
 */
@Entity
@Table(name = "tblColor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblColor.findAll", query = "SELECT t FROM TblColor t")
    , @NamedQuery(name = "TblColor.findByColorId", query = "SELECT t FROM TblColor t WHERE t.colorId = :colorId")
    , @NamedQuery(name = "TblColor.findByColorName", query = "SELECT t FROM TblColor t WHERE t.colorName = :colorName")})
public class TblColor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "color_id")
    private Integer colorId;
    @Size(max = 50)
    @Column(name = "color_name")
    private String colorName;
    @OneToMany(mappedBy = "colorId")
    private Collection<TblProductColor> tblProductColorCollection;

    public TblColor() {
    }

    public TblColor(Integer colorId) {
        this.colorId = colorId;
    }

    public Integer getColorId() {
        return colorId;
    }

    public void setColorId(Integer colorId) {
        this.colorId = colorId;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    @XmlTransient
    public Collection<TblProductColor> getTblProductColorCollection() {
        return tblProductColorCollection;
    }

    public void setTblProductColorCollection(Collection<TblProductColor> tblProductColorCollection) {
        this.tblProductColorCollection = tblProductColorCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (colorId != null ? colorId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblColor)) {
            return false;
        }
        TblColor other = (TblColor) object;
        if ((this.colorId == null && other.colorId != null) || (this.colorId != null && !this.colorId.equals(other.colorId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblColor[ colorId=" + colorId + " ]";
    }
    
}
