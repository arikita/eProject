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
@Table(name = "tblVoucher")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblVoucher.findAll", query = "SELECT t FROM TblVoucher t")
    , @NamedQuery(name = "TblVoucher.findByVoucherId", query = "SELECT t FROM TblVoucher t WHERE t.voucherId = :voucherId")
    , @NamedQuery(name = "TblVoucher.findByVoucherName", query = "SELECT t FROM TblVoucher t WHERE t.voucherName = :voucherName")
    , @NamedQuery(name = "TblVoucher.findByVoucherCash", query = "SELECT t FROM TblVoucher t WHERE t.voucherCash = :voucherCash")
    , @NamedQuery(name = "TblVoucher.findByVoucherStartDate", query = "SELECT t FROM TblVoucher t WHERE t.voucherStartDate = :voucherStartDate")
    , @NamedQuery(name = "TblVoucher.findByVoucherEndDate", query = "SELECT t FROM TblVoucher t WHERE t.voucherEndDate = :voucherEndDate")
    , @NamedQuery(name = "TblVoucher.findByVoucherMin", query = "SELECT t FROM TblVoucher t WHERE t.voucherMin = :voucherMin")
    , @NamedQuery(name = "TblVoucher.findByVoucherMax", query = "SELECT t FROM TblVoucher t WHERE t.voucherMax = :voucherMax")
    , @NamedQuery(name = "TblVoucher.findByVoucherPercent", query = "SELECT t FROM TblVoucher t WHERE t.voucherPercent = :voucherPercent")
    , @NamedQuery(name = "TblVoucher.findByVoucherRole", query = "SELECT t FROM TblVoucher t WHERE t.voucherRole = :voucherRole")
    , @NamedQuery(name = "TblVoucher.findByVoucherDescription", query = "SELECT t FROM TblVoucher t WHERE t.voucherDescription = :voucherDescription")
    , @NamedQuery(name = "TblVoucher.findByVoucherLimit", query = "SELECT t FROM TblVoucher t WHERE t.voucherLimit = :voucherLimit")})
public class TblVoucher implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "voucher_id")
    private Integer voucherId;
    @Size(max = 50)
    @Column(name = "voucher_name")
    private String voucherName;
    @Column(name = "voucher_cash")
    private Integer voucherCash;
    @Size(max = 10)
    @Column(name = "voucher_start_date")
    private String voucherStartDate;
    @Column(name = "voucher_end_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date voucherEndDate;
    @Column(name = "voucher_min")
    private Integer voucherMin;
    @Column(name = "voucher_max")
    private Integer voucherMax;
    @Column(name = "voucher_percent")
    private Integer voucherPercent;
    @Column(name = "voucher_role")
    private Integer voucherRole;
    @Size(max = 2147483647)
    @Column(name = "voucher_description")
    private String voucherDescription;
    @Column(name = "voucher_limit")
    private Integer voucherLimit;
    @OneToMany(mappedBy = "voucherId")
    private Collection<TblOrder> tblOrderCollection;

    public TblVoucher() {
    }

    public TblVoucher(Integer voucherId) {
        this.voucherId = voucherId;
    }

    public Integer getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(Integer voucherId) {
        this.voucherId = voucherId;
    }

    public String getVoucherName() {
        return voucherName;
    }

    public void setVoucherName(String voucherName) {
        this.voucherName = voucherName;
    }

    public Integer getVoucherCash() {
        return voucherCash;
    }

    public void setVoucherCash(Integer voucherCash) {
        this.voucherCash = voucherCash;
    }

    public String getVoucherStartDate() {
        return voucherStartDate;
    }

    public void setVoucherStartDate(String voucherStartDate) {
        this.voucherStartDate = voucherStartDate;
    }

    public Date getVoucherEndDate() {
        return voucherEndDate;
    }

    public void setVoucherEndDate(Date voucherEndDate) {
        this.voucherEndDate = voucherEndDate;
    }

    public Integer getVoucherMin() {
        return voucherMin;
    }

    public void setVoucherMin(Integer voucherMin) {
        this.voucherMin = voucherMin;
    }

    public Integer getVoucherMax() {
        return voucherMax;
    }

    public void setVoucherMax(Integer voucherMax) {
        this.voucherMax = voucherMax;
    }

    public Integer getVoucherPercent() {
        return voucherPercent;
    }

    public void setVoucherPercent(Integer voucherPercent) {
        this.voucherPercent = voucherPercent;
    }

    public Integer getVoucherRole() {
        return voucherRole;
    }

    public void setVoucherRole(Integer voucherRole) {
        this.voucherRole = voucherRole;
    }

    public String getVoucherDescription() {
        return voucherDescription;
    }

    public void setVoucherDescription(String voucherDescription) {
        this.voucherDescription = voucherDescription;
    }

    public Integer getVoucherLimit() {
        return voucherLimit;
    }

    public void setVoucherLimit(Integer voucherLimit) {
        this.voucherLimit = voucherLimit;
    }

    @XmlTransient
    public Collection<TblOrder> getTblOrderCollection() {
        return tblOrderCollection;
    }

    public void setTblOrderCollection(Collection<TblOrder> tblOrderCollection) {
        this.tblOrderCollection = tblOrderCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (voucherId != null ? voucherId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblVoucher)) {
            return false;
        }
        TblVoucher other = (TblVoucher) object;
        if ((this.voucherId == null && other.voucherId != null) || (this.voucherId != null && !this.voucherId.equals(other.voucherId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblVoucher[ voucherId=" + voucherId + " ]";
    }
    
}
