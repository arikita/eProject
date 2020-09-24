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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "tblSalary")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblSalary.findAll", query = "SELECT t FROM TblSalary t")
    , @NamedQuery(name = "TblSalary.findBySalaryId", query = "SELECT t FROM TblSalary t WHERE t.salaryId = :salaryId")
    , @NamedQuery(name = "TblSalary.findBySalaryWorkingDay", query = "SELECT t FROM TblSalary t WHERE t.salaryWorkingDay = :salaryWorkingDay")
    , @NamedQuery(name = "TblSalary.findBySalaryOvertime", query = "SELECT t FROM TblSalary t WHERE t.salaryOvertime = :salaryOvertime")
    , @NamedQuery(name = "TblSalary.findBySalaryDayOff", query = "SELECT t FROM TblSalary t WHERE t.salaryDayOff = :salaryDayOff")
    , @NamedQuery(name = "TblSalary.findBySalaryHoliday", query = "SELECT t FROM TblSalary t WHERE t.salaryHoliday = :salaryHoliday")
    , @NamedQuery(name = "TblSalary.findBySalaryAllowance", query = "SELECT t FROM TblSalary t WHERE t.salaryAllowance = :salaryAllowance")
    , @NamedQuery(name = "TblSalary.findBySalaryBonus", query = "SELECT t FROM TblSalary t WHERE t.salaryBonus = :salaryBonus")
    , @NamedQuery(name = "TblSalary.findBySalaryOther", query = "SELECT t FROM TblSalary t WHERE t.salaryOther = :salaryOther")
    , @NamedQuery(name = "TblSalary.findBySalaryOtherDetail", query = "SELECT t FROM TblSalary t WHERE t.salaryOtherDetail = :salaryOtherDetail")
    , @NamedQuery(name = "TblSalary.findBySalaryReduce", query = "SELECT t FROM TblSalary t WHERE t.salaryReduce = :salaryReduce")
    , @NamedQuery(name = "TblSalary.findBySalaryReduceDetail", query = "SELECT t FROM TblSalary t WHERE t.salaryReduceDetail = :salaryReduceDetail")})
public class TblSalary implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
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
    @Size(max = 150)
    @Column(name = "salary_other_detail")
    private String salaryOtherDetail;
    @Column(name = "salary_reduce")
    private Integer salaryReduce;
    @Size(max = 150)
    @Column(name = "salary_reduce_detail")
    private String salaryReduceDetail;
    @JoinColumn(name = "admin_id", referencedColumnName = "admin_id")
    @ManyToOne
    private TblAdmin adminId;

    public TblSalary() {
    }

    public TblSalary(Integer salaryId) {
        this.salaryId = salaryId;
    }

    public Integer getSalaryId() {
        return salaryId;
    }

    public void setSalaryId(Integer salaryId) {
        this.salaryId = salaryId;
    }

    public Integer getSalaryWorkingDay() {
        return salaryWorkingDay;
    }

    public void setSalaryWorkingDay(Integer salaryWorkingDay) {
        this.salaryWorkingDay = salaryWorkingDay;
    }

    public Integer getSalaryOvertime() {
        return salaryOvertime;
    }

    public void setSalaryOvertime(Integer salaryOvertime) {
        this.salaryOvertime = salaryOvertime;
    }

    public Integer getSalaryDayOff() {
        return salaryDayOff;
    }

    public void setSalaryDayOff(Integer salaryDayOff) {
        this.salaryDayOff = salaryDayOff;
    }

    public Integer getSalaryHoliday() {
        return salaryHoliday;
    }

    public void setSalaryHoliday(Integer salaryHoliday) {
        this.salaryHoliday = salaryHoliday;
    }

    public Integer getSalaryAllowance() {
        return salaryAllowance;
    }

    public void setSalaryAllowance(Integer salaryAllowance) {
        this.salaryAllowance = salaryAllowance;
    }

    public Integer getSalaryBonus() {
        return salaryBonus;
    }

    public void setSalaryBonus(Integer salaryBonus) {
        this.salaryBonus = salaryBonus;
    }

    public Integer getSalaryOther() {
        return salaryOther;
    }

    public void setSalaryOther(Integer salaryOther) {
        this.salaryOther = salaryOther;
    }

    public String getSalaryOtherDetail() {
        return salaryOtherDetail;
    }

    public void setSalaryOtherDetail(String salaryOtherDetail) {
        this.salaryOtherDetail = salaryOtherDetail;
    }

    public Integer getSalaryReduce() {
        return salaryReduce;
    }

    public void setSalaryReduce(Integer salaryReduce) {
        this.salaryReduce = salaryReduce;
    }

    public String getSalaryReduceDetail() {
        return salaryReduceDetail;
    }

    public void setSalaryReduceDetail(String salaryReduceDetail) {
        this.salaryReduceDetail = salaryReduceDetail;
    }

    public TblAdmin getAdminId() {
        return adminId;
    }

    public void setAdminId(TblAdmin adminId) {
        this.adminId = adminId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (salaryId != null ? salaryId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblSalary)) {
            return false;
        }
        TblSalary other = (TblSalary) object;
        if ((this.salaryId == null && other.salaryId != null) || (this.salaryId != null && !this.salaryId.equals(other.salaryId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblSalary[ salaryId=" + salaryId + " ]";
    }
    
}
