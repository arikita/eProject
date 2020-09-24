/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.TblAdmin;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

/**
 *
 * @author VĂN BÌNH
 */
public class SalaryEntity {
    @Column(name = "salary_id")
    private Integer salaryId;
    @Column(name = "salary_working_day")
    private Integer salaryWorkingDay;
    @Column(name = "salary_overtime")
    private Integer salaryOvertime;
    @Column(name = "salary_day_off")
    private Integer salaryDayOff;
    @Column(name = "salary_holiday")
    private Integer salaryHoliday;
    @Column(name = "salary_allowance")
    private Integer salaryAllowance;
    @Column(name = "salary_bonus")
    private Integer salaryBonus;
    @Column(name = "salary_other")
    private Integer salaryOther;
    @Column(name = "salary_other_detail")
    private String salaryOtherDetail;
    @Column(name = "salary_reduce")
    private Integer salaryReduce;
    @Column(name = "salary_reduce_detail")
    private String salaryReduceDetail;
    @JoinColumn(name = "admin_id", referencedColumnName = "admin_id")
    @ManyToOne
    private TblAdmin adminId;

    public SalaryEntity() {
    }

    public SalaryEntity(Integer salaryId, Integer salaryWorkingDay, Integer salaryOvertime, Integer salaryDayOff, Integer salaryHoliday, Integer salaryAllowance, Integer salaryBonus, Integer salaryOther, String salaryOtherDetail, Integer salaryReduce, String salaryReduceDetail, TblAdmin adminId) {
        this.salaryId = salaryId;
        this.salaryWorkingDay = salaryWorkingDay;
        this.salaryOvertime = salaryOvertime;
        this.salaryDayOff = salaryDayOff;
        this.salaryHoliday = salaryHoliday;
        this.salaryAllowance = salaryAllowance;
        this.salaryBonus = salaryBonus;
        this.salaryOther = salaryOther;
        this.salaryOtherDetail = salaryOtherDetail;
        this.salaryReduce = salaryReduce;
        this.salaryReduceDetail = salaryReduceDetail;
        this.adminId = adminId;
    }

    /**
     * @return the salaryId
     */
    public Integer getSalaryId() {
        return salaryId;
    }

    /**
     * @param salaryId the salaryId to set
     */
    public void setSalaryId(Integer salaryId) {
        this.salaryId = salaryId;
    }

    /**
     * @return the salaryWorkingDay
     */
    public Integer getSalaryWorkingDay() {
        return salaryWorkingDay;
    }

    /**
     * @param salaryWorkingDay the salaryWorkingDay to set
     */
    public void setSalaryWorkingDay(Integer salaryWorkingDay) {
        this.salaryWorkingDay = salaryWorkingDay;
    }

    /**
     * @return the salaryOvertime
     */
    public Integer getSalaryOvertime() {
        return salaryOvertime;
    }

    /**
     * @param salaryOvertime the salaryOvertime to set
     */
    public void setSalaryOvertime(Integer salaryOvertime) {
        this.salaryOvertime = salaryOvertime;
    }

    /**
     * @return the salaryDayOff
     */
    public Integer getSalaryDayOff() {
        return salaryDayOff;
    }

    /**
     * @param salaryDayOff the salaryDayOff to set
     */
    public void setSalaryDayOff(Integer salaryDayOff) {
        this.salaryDayOff = salaryDayOff;
    }

    /**
     * @return the salaryHoliday
     */
    public Integer getSalaryHoliday() {
        return salaryHoliday;
    }

    /**
     * @param salaryHoliday the salaryHoliday to set
     */
    public void setSalaryHoliday(Integer salaryHoliday) {
        this.salaryHoliday = salaryHoliday;
    }

    /**
     * @return the salaryAllowance
     */
    public Integer getSalaryAllowance() {
        return salaryAllowance;
    }

    /**
     * @param salaryAllowance the salaryAllowance to set
     */
    public void setSalaryAllowance(Integer salaryAllowance) {
        this.salaryAllowance = salaryAllowance;
    }

    /**
     * @return the salaryBonus
     */
    public Integer getSalaryBonus() {
        return salaryBonus;
    }

    /**
     * @param salaryBonus the salaryBonus to set
     */
    public void setSalaryBonus(Integer salaryBonus) {
        this.salaryBonus = salaryBonus;
    }

    /**
     * @return the salaryOther
     */
    public Integer getSalaryOther() {
        return salaryOther;
    }

    /**
     * @param salaryOther the salaryOther to set
     */
    public void setSalaryOther(Integer salaryOther) {
        this.salaryOther = salaryOther;
    }

    /**
     * @return the salaryOtherDetail
     */
    public String getSalaryOtherDetail() {
        return salaryOtherDetail;
    }

    /**
     * @param salaryOtherDetail the salaryOtherDetail to set
     */
    public void setSalaryOtherDetail(String salaryOtherDetail) {
        this.salaryOtherDetail = salaryOtherDetail;
    }

    /**
     * @return the salaryReduce
     */
    public Integer getSalaryReduce() {
        return salaryReduce;
    }

    /**
     * @param salaryReduce the salaryReduce to set
     */
    public void setSalaryReduce(Integer salaryReduce) {
        this.salaryReduce = salaryReduce;
    }

    /**
     * @return the salaryReduceDetail
     */
    public String getSalaryReduceDetail() {
        return salaryReduceDetail;
    }

    /**
     * @param salaryReduceDetail the salaryReduceDetail to set
     */
    public void setSalaryReduceDetail(String salaryReduceDetail) {
        this.salaryReduceDetail = salaryReduceDetail;
    }

    /**
     * @return the adminId
     */
    public TblAdmin getAdminId() {
        return adminId;
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(TblAdmin adminId) {
        this.adminId = adminId;
    }
    
}
