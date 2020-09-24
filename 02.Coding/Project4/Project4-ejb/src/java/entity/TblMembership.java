/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblMembership")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblMembership.findAll", query = "SELECT t FROM TblMembership t")
    , @NamedQuery(name = "TblMembership.findByMembershipId", query = "SELECT t FROM TblMembership t WHERE t.membershipId = :membershipId")
    , @NamedQuery(name = "TblMembership.findByMembershipDetail", query = "SELECT t FROM TblMembership t WHERE t.membershipDetail = :membershipDetail")
    , @NamedQuery(name = "TblMembership.findByMembershipTotal", query = "SELECT t FROM TblMembership t WHERE t.membershipTotal = :membershipTotal")
    , @NamedQuery(name = "TblMembership.findByMembershipPercentOut", query = "SELECT t FROM TblMembership t WHERE t.membershipPercentOut = :membershipPercentOut")})
public class TblMembership implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "membership_id")
    private Integer membershipId;
    @Size(max = 150)
    @Column(name = "membership_detail")
    private String membershipDetail;
    @Column(name = "membership_total")
    private Integer membershipTotal;
    @Column(name = "membership_percent_out")
    private String membershipPercentOut;

    public TblMembership() {
    }

    public TblMembership(Integer membershipId) {
        this.membershipId = membershipId;
    }

    public Integer getMembershipId() {
        return membershipId;
    }

    public void setMembershipId(Integer membershipId) {
        this.membershipId = membershipId;
    }

    public String getMembershipDetail() {
        return membershipDetail;
    }

    public void setMembershipDetail(String membershipDetail) {
        this.membershipDetail = membershipDetail;
    }

    public Integer getMembershipTotal() {
        return membershipTotal;
    }

    public void setMembershipTotal(Integer membershipTotal) {
        this.membershipTotal = membershipTotal;
    }

    public String getMembershipPercentOut() {
        return membershipPercentOut;
    }

    public void setMembershipPercentOut(String membershipPercentOut) {
        this.membershipPercentOut = membershipPercentOut;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (membershipId != null ? membershipId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblMembership)) {
            return false;
        }
        TblMembership other = (TblMembership) object;
        if ((this.membershipId == null && other.membershipId != null) || (this.membershipId != null && !this.membershipId.equals(other.membershipId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblMembership[ membershipId=" + membershipId + " ]";
    }
    
}
