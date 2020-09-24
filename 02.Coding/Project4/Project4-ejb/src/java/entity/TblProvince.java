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
@Table(name = "tblProvince")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblProvince.findAll", query = "SELECT t FROM TblProvince t")
    , @NamedQuery(name = "TblProvince.findByProvinceId", query = "SELECT t FROM TblProvince t WHERE t.provinceId = :provinceId")
    , @NamedQuery(name = "TblProvince.findByProvinceName", query = "SELECT t FROM TblProvince t WHERE t.provinceName = :provinceName")
    , @NamedQuery(name = "TblProvince.findByProvinceType", query = "SELECT t FROM TblProvince t WHERE t.provinceType = :provinceType")})
public class TblProvince implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "province_id")
    private Integer provinceId;
    @Size(max = 50)
    @Column(name = "province_name")
    private String provinceName;
    @Size(max = 50)
    @Column(name = "province_type")
    private String provinceType;
    @OneToMany(mappedBy = "provinceId")
    private Collection<TblDistrict> tblDistrictCollection;

    public TblProvince() {
    }

    public TblProvince(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    public String getProvinceType() {
        return provinceType;
    }

    public void setProvinceType(String provinceType) {
        this.provinceType = provinceType;
    }

    @XmlTransient
    public Collection<TblDistrict> getTblDistrictCollection() {
        return tblDistrictCollection;
    }

    public void setTblDistrictCollection(Collection<TblDistrict> tblDistrictCollection) {
        this.tblDistrictCollection = tblDistrictCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (provinceId != null ? provinceId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblProvince)) {
            return false;
        }
        TblProvince other = (TblProvince) object;
        if ((this.provinceId == null && other.provinceId != null) || (this.provinceId != null && !this.provinceId.equals(other.provinceId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblProvince[ provinceId=" + provinceId + " ]";
    }
    
}
