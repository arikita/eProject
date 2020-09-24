/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

/**
 *
 * @author VĂN BÌNH
 */
public class VoucherEntity {
    @Column(name = "voucher_id")
    private Integer voucherId;
    @Column(name = "voucher_name")
    private String voucherName;
    @Column(name = "voucher_cash")
    private Integer voucherCash;
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
    @Column(name = "voucher_description")
    private String voucherDescription;
    @Column(name = "voucher_limit")
    private Integer voucherLimit;

    public VoucherEntity() {
    }

    public VoucherEntity(Integer voucherId, String voucherName, Integer voucherCash, String voucherStartDate, Date voucherEndDate, Integer voucherMin, Integer voucherMax, Integer voucherPercent, Integer voucherRole, String voucherDescription, Integer voucherLimit) {
        this.voucherId = voucherId;
        this.voucherName = voucherName;
        this.voucherCash = voucherCash;
        this.voucherStartDate = voucherStartDate;
        this.voucherEndDate = voucherEndDate;
        this.voucherMin = voucherMin;
        this.voucherMax = voucherMax;
        this.voucherPercent = voucherPercent;
        this.voucherRole = voucherRole;
        this.voucherDescription = voucherDescription;
        this.voucherLimit = voucherLimit;
    }

    /**
     * @return the voucherId
     */
    public Integer getVoucherId() {
        return voucherId;
    }

    /**
     * @param voucherId the voucherId to set
     */
    public void setVoucherId(Integer voucherId) {
        this.voucherId = voucherId;
    }

    /**
     * @return the voucherName
     */
    public String getVoucherName() {
        return voucherName;
    }

    /**
     * @param voucherName the voucherName to set
     */
    public void setVoucherName(String voucherName) {
        this.voucherName = voucherName;
    }

    /**
     * @return the voucherCash
     */
    public Integer getVoucherCash() {
        return voucherCash;
    }

    /**
     * @param voucherCash the voucherCash to set
     */
    public void setVoucherCash(Integer voucherCash) {
        this.voucherCash = voucherCash;
    }

    /**
     * @return the voucherStartDate
     */
    public String getVoucherStartDate() {
        return voucherStartDate;
    }

    /**
     * @param voucherStartDate the voucherStartDate to set
     */
    public void setVoucherStartDate(String voucherStartDate) {
        this.voucherStartDate = voucherStartDate;
    }

    /**
     * @return the voucherEndDate
     */
    public Date getVoucherEndDate() {
        return voucherEndDate;
    }

    /**
     * @param voucherEndDate the voucherEndDate to set
     */
    public void setVoucherEndDate(Date voucherEndDate) {
        this.voucherEndDate = voucherEndDate;
    }

    /**
     * @return the voucherMin
     */
    public Integer getVoucherMin() {
        return voucherMin;
    }

    /**
     * @param voucherMin the voucherMin to set
     */
    public void setVoucherMin(Integer voucherMin) {
        this.voucherMin = voucherMin;
    }

    /**
     * @return the voucherMax
     */
    public Integer getVoucherMax() {
        return voucherMax;
    }

    /**
     * @param voucherMax the voucherMax to set
     */
    public void setVoucherMax(Integer voucherMax) {
        this.voucherMax = voucherMax;
    }

    /**
     * @return the voucherPercent
     */
    public Integer getVoucherPercent() {
        return voucherPercent;
    }

    /**
     * @param voucherPercent the voucherPercent to set
     */
    public void setVoucherPercent(Integer voucherPercent) {
        this.voucherPercent = voucherPercent;
    }

    /**
     * @return the voucherRole
     */
    public Integer getVoucherRole() {
        return voucherRole;
    }

    /**
     * @param voucherRole the voucherRole to set
     */
    public void setVoucherRole(Integer voucherRole) {
        this.voucherRole = voucherRole;
    }

    /**
     * @return the voucherDescription
     */
    public String getVoucherDescription() {
        return voucherDescription;
    }

    /**
     * @param voucherDescription the voucherDescription to set
     */
    public void setVoucherDescription(String voucherDescription) {
        this.voucherDescription = voucherDescription;
    }

    /**
     * @return the voucherLimit
     */
    public Integer getVoucherLimit() {
        return voucherLimit;
    }

    /**
     * @param voucherLimit the voucherLimit to set
     */
    public void setVoucherLimit(Integer voucherLimit) {
        this.voucherLimit = voucherLimit;
    }
     
}
