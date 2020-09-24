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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblDistrict")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblDistrict.findAll", query = "SELECT t FROM TblDistrict t")
    , @NamedQuery(name = "TblDistrict.findByDistrictId", query = "SELECT t FROM TblDistrict t WHERE t.districtId = :districtId")
    , @NamedQuery(name = "TblDistrict.findByDistrictName", query = "SELECT t FROM TblDistrict t WHERE t.districtName = :districtName")
    , @NamedQuery(name = "TblDistrict.findByDistrictType", query = "SELECT t FROM TblDistrict t WHERE t.districtType = :districtType")})
public class TblDistrict implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "district_id")
    private Integer districtId;
    @Size(max = 50)
    @Column(name = "district_name")
    private String districtName;
    @Size(max = 50)
    @Column(name = "district_type")
    private String districtType;
    @OneToMany(mappedBy = "districtId")
    private Collection<TblCustomer> tblCustomerCollection;
    @JoinColumn(name = "province_id", referencedColumnName = "province_id")
    @ManyToOne
    private TblProvince provinceId;

    public TblDistrict() {
    }

    public TblDistrict(Integer districtId) {
        this.districtId = districtId;
    }

    public Integer getDistrictId() {
        return districtId;
    }

    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }

    public String getDistrictType() {
        return districtType;
    }

    public void setDistrictType(String districtType) {
        this.districtType = districtType;
    }

    @XmlTransient
    public Collection<TblCustomer> getTblCustomerCollection() {
        return tblCustomerCollection;
    }

    public void setTblCustomerCollection(Collection<TblCustomer> tblCustomerCollection) {
        this.tblCustomerCollection = tblCustomerCollection;
    }

    public TblProvince getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(TblProvince provinceId) {
        this.provinceId = provinceId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (districtId != null ? districtId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblDistrict)) {
            return false;
        }
        TblDistrict other = (TblDistrict) object;
        if ((this.districtId == null && other.districtId != null) || (this.districtId != null && !this.districtId.equals(other.districtId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblDistrict[ districtId=" + districtId + " ]";
    }
    
}
