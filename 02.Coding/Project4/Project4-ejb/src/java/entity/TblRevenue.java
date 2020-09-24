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
@Table(name = "tblRevenue")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblRevenue.findAll", query = "SELECT t FROM TblRevenue t")
    , @NamedQuery(name = "TblRevenue.findByRevenueId", query = "SELECT t FROM TblRevenue t WHERE t.revenueId = :revenueId")
    , @NamedQuery(name = "TblRevenue.findByRevenueName", query = "SELECT t FROM TblRevenue t WHERE t.revenueName = :revenueName")
    , @NamedQuery(name = "TblRevenue.findByRevenueDetail", query = "SELECT t FROM TblRevenue t WHERE t.revenueDetail = :revenueDetail")
    , @NamedQuery(name = "TblRevenue.findByRevenueMonth", query = "SELECT t FROM TblRevenue t WHERE t.revenueMonth = :revenueMonth")
    , @NamedQuery(name = "TblRevenue.findByRevenueYear", query = "SELECT t FROM TblRevenue t WHERE t.revenueYear = :revenueYear")
    , @NamedQuery(name = "TblRevenue.findByRevenueTotal", query = "SELECT t FROM TblRevenue t WHERE t.revenueTotal = :revenueTotal")})
public class TblRevenue implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "revenue_id")
    private Integer revenueId;
    @Size(max = 150)
    @Column(name = "revenue_name")
    private String revenueName;
    @Size(max = 2147483647)
    @Column(name = "revenue_detail")
    private String revenueDetail;
    @Column(name = "revenue_month")
    private Integer revenueMonth;
    @Column(name = "revenue_year")
    private Integer revenueYear;
    @Column(name = "revenue_total")
    private Integer revenueTotal;

    public TblRevenue() {
    }

    public TblRevenue(Integer revenueId) {
        this.revenueId = revenueId;
    }

    public Integer getRevenueId() {
        return revenueId;
    }

    public void setRevenueId(Integer revenueId) {
        this.revenueId = revenueId;
    }

    public String getRevenueName() {
        return revenueName;
    }

    public void setRevenueName(String revenueName) {
        this.revenueName = revenueName;
    }

    public String getRevenueDetail() {
        return revenueDetail;
    }

    public void setRevenueDetail(String revenueDetail) {
        this.revenueDetail = revenueDetail;
    }

    public Integer getRevenueMonth() {
        return revenueMonth;
    }

    public void setRevenueMonth(Integer revenueMonth) {
        this.revenueMonth = revenueMonth;
    }

    public Integer getRevenueYear() {
        return revenueYear;
    }

    public void setRevenueYear(Integer revenueYear) {
        this.revenueYear = revenueYear;
    }

    public Integer getRevenueTotal() {
        return revenueTotal;
    }

    public void setRevenueTotal(Integer revenueTotal) {
        this.revenueTotal = revenueTotal;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (revenueId != null ? revenueId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblRevenue)) {
            return false;
        }
        TblRevenue other = (TblRevenue) object;
        if ((this.revenueId == null && other.revenueId != null) || (this.revenueId != null && !this.revenueId.equals(other.revenueId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblRevenue[ revenueId=" + revenueId + " ]";
    }
    
}
