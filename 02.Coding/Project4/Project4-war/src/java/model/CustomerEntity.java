/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.TblCart;
import entity.TblDistrict;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author Windows 18
 */
public class CustomerEntity {
    @Column(name = "customer_name")
    private String customerName;
    @Column(name = "customer_password")
    private String customerPassword;   
    @Column(name = "customer_id")
    private Integer customerId;
    @Column(name = "customer_first_name")
    private String customerFirstName;
    @Column(name = "customer_last_name")
    private String customerLastName;
    @Column(name = "customer_address")
    private String customerAddress;
    @Column(name = "customer_mobile")
    private String customerMobile;
    @Column(name = "customer_email")
    private String customerEmail;
    @Column(name = "customer_picture")
    private String customerPicture;
    @Column(name = "customer_gender")
    private Integer customerGender;
    @Column(name = "customer_birthday")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date customerBirthday;
    @Column(name = "district_id")
    private int districtId;// ben kia la object - chuyen ve int moi sai dc
    @Column(name = "province_id")
    private int provinceId;

    public CustomerEntity() {
    }

    public CustomerEntity(String customerName, String customerPassword, Integer customerId, String customerFirstName, String customerLastName, String customerAddress, String customerMobile, String customerEmail, String customerPicture, Integer customerGender, Date customerBirthday, int districtId, int provinceId) {
        this.customerName = customerName;
        this.customerPassword = customerPassword;
        this.customerId = customerId;
        this.customerFirstName = customerFirstName;
        this.customerLastName = customerLastName;
        this.customerAddress = customerAddress;
        this.customerMobile = customerMobile;
        this.customerEmail = customerEmail;
        this.customerPicture = customerPicture;
        this.customerGender = customerGender;
        this.customerBirthday = customerBirthday;
        this.districtId = districtId;
        this.provinceId = provinceId;
    }

    
    /**
     * @return the customerName
     */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * @param customerName the customerName to set
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    /**
     * @return the customerPassword
     */
    public String getCustomerPassword() {
        return customerPassword;
    }

    /**
     * @param customerPassword the customerPassword to set
     */
    public void setCustomerPassword(String customerPassword) {
        this.customerPassword = customerPassword;
    }

    /**
     * @return the customerId
     */
    public Integer getCustomerId() {
        return customerId;
    }

    /**
     * @param customerId the customerId to set
     */
    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    /**
     * @return the customerFirstName
     */
    public String getCustomerFirstName() {
        return customerFirstName;
    }

    /**
     * @param customerFirstName the customerFirstName to set
     */
    public void setCustomerFirstName(String customerFirstName) {
        this.customerFirstName = customerFirstName;
    }

    /**
     * @return the customerLastName
     */
    public String getCustomerLastName() {
        return customerLastName;
    }

    /**
     * @param customerLastName the customerLastName to set
     */
    public void setCustomerLastName(String customerLastName) {
        this.customerLastName = customerLastName;
    }

    /**
     * @return the customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }

    /**
     * @param customerAddress the customerAddress to set
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    /**
     * @return the customerMobile
     */
    public String getCustomerMobile() {
        return customerMobile;
    }

    /**
     * @param customerMobile the customerMobile to set
     */
    public void setCustomerMobile(String customerMobile) {
        this.customerMobile = customerMobile;
    }

    /**
     * @return the customerEmail
     */
    public String getCustomerEmail() {
        return customerEmail;
    }

    /**
     * @param customerEmail the customerEmail to set
     */
    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    /**
     * @return the customerPicture
     */
    public String getCustomerPicture() {
        return customerPicture;
    }

    /**
     * @param customerPicture the customerPicture to set
     */
    public void setCustomerPicture(String customerPicture) {
        this.customerPicture = customerPicture;
    }

    /**
     * @return the customerGender
     */
    public Integer getCustomerGender() {
        return customerGender;
    }

    /**
     * @param customerGender the customerGender to set
     */
    public void setCustomerGender(Integer customerGender) {
        this.customerGender = customerGender;
    }

    /**
     * @return the customerBirthday
     */
    public Date getCustomerBirthday() {
        return customerBirthday;
    }

    /**
     * @param customerBirthday the customerBirthday to set
     */
    public void setCustomerBirthday(Date customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    /**
     * @return the districtId
     */
    public int getDistrictId() {
        return districtId;
    }

    /**
     * @param districtId the districtId to set
     */
    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }

    /**
     * @return the provinceId
     */
    public int getProvinceId() {
        return provinceId;
    }

    /**
     * @param provinceId the provinceId to set
     */
    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }

   
    
}
