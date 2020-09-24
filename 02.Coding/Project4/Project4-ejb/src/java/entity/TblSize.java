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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblSize")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblSize.findAll", query = "SELECT t FROM TblSize t")
    , @NamedQuery(name = "TblSize.findBySizeId", query = "SELECT t FROM TblSize t WHERE t.sizeId = :sizeId")
    , @NamedQuery(name = "TblSize.findBySizeSize", query = "SELECT t FROM TblSize t WHERE t.sizeSize = :sizeSize")})
public class TblSize implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "size_id")
    private Integer sizeId;
    @Column(name = "size_size")
    private Integer sizeSize;
    @OneToMany(mappedBy = "sizeId")
    private Collection<TblProductColorSize> tblProductColorSizeCollection;

    public TblSize() {
    }

    public TblSize(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public Integer getSizeSize() {
        return sizeSize;
    }

    public void setSizeSize(Integer sizeSize) {
        this.sizeSize = sizeSize;
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
        hash += (sizeId != null ? sizeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblSize)) {
            return false;
        }
        TblSize other = (TblSize) object;
        if ((this.sizeId == null && other.sizeId != null) || (this.sizeId != null && !this.sizeId.equals(other.sizeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblSize[ sizeId=" + sizeId + " ]";
    }
    
}
