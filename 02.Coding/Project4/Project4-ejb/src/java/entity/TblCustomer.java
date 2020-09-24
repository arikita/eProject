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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author VĂN BÌNH
 */
@Entity
@Table(name = "tblCustomer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblCustomer.findAll", query = "SELECT t FROM TblCustomer t")
    , @NamedQuery(name = "TblCustomer.findByCustomerId", query = "SELECT t FROM TblCustomer t WHERE t.customerId = :customerId")
    , @NamedQuery(name = "TblCustomer.findByCustomerFirstName", query = "SELECT t FROM TblCustomer t WHERE t.customerFirstName = :customerFirstName")
    , @NamedQuery(name = "TblCustomer.findByCustomerLastName", query = "SELECT t FROM TblCustomer t WHERE t.customerLastName = :customerLastName")
    , @NamedQuery(name = "TblCustomer.findByCustomerAddress", query = "SELECT t FROM TblCustomer t WHERE t.customerAddress = :customerAddress")
    , @NamedQuery(name = "TblCustomer.findByCustomerMobile", query = "SELECT t FROM TblCustomer t WHERE t.customerMobile = :customerMobile")
    , @NamedQuery(name = "TblCustomer.findByCustomerEmail", query = "SELECT t FROM TblCustomer t WHERE t.customerEmail = :customerEmail")
    , @NamedQuery(name = "TblCustomer.findByCustomerPicture", query = "SELECT t FROM TblCustomer t WHERE t.customerPicture = :customerPicture")
    , @NamedQuery(name = "TblCustomer.findByCustomerGender", query = "SELECT t FROM TblCustomer t WHERE t.customerGender = :customerGender")
    , @NamedQuery(name = "TblCustomer.findByCustomerBirthday", query = "SELECT t FROM TblCustomer t WHERE t.customerBirthday = :customerBirthday")})
public class TblCustomer implements Serializable {

    @OneToMany(mappedBy = "customerId")
    private Collection<TblCart> tblCartCollection;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id")
    private Integer customerId;
    @Size(max = 100)
    @Column(name = "customer_first_name")
    private String customerFirstName;
    @Size(max = 100)
    @Column(name = "customer_last_name")
    private String customerLastName;
    @Size(max = 2147483647)
    @Column(name = "customer_address")
    private String customerAddress;
    @Size(max = 20)
    @Column(name = "customer_mobile")
    private String customerMobile;
    @Size(max = 150)
    @Column(name = "customer_email")
    private String customerEmail;
    @Size(max = 2147483647)
    @Column(name = "customer_picture")
    private String customerPicture;
    @Column(name = "customer_gender")
    private Integer customerGender;
    @Column(name = "customer_birthday")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date customerBirthday;
    @JoinColumn(name = "district_id", referencedColumnName = "district_id")
    @ManyToOne
    private TblDistrict districtId;//object

    public TblCustomer() {
    }

    public TblCustomer(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerFirstName() {
        return customerFirstName;
    }

    public void setCustomerFirstName(String customerFirstName) {
        this.customerFirstName = customerFirstName;
    }

    public String getCustomerLastName() {
        return customerLastName;
    }

    public void setCustomerLastName(String customerLastName) {
        this.customerLastName = customerLastName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerMobile() {
        return customerMobile;
    }

    public void setCustomerMobile(String customerMobile) {
        this.customerMobile = customerMobile;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPicture() {
        return customerPicture;
    }

    public void setCustomerPicture(String customerPicture) {
        this.customerPicture = customerPicture;
    }

    public Integer getCustomerGender() {
        return customerGender;
    }

    public void setCustomerGender(Integer customerGender) {
        this.customerGender = customerGender;
    }

    public Date getCustomerBirthday() {
        return customerBirthday;
    }

    public void setCustomerBirthday(Date customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    public TblDistrict getDistrictId() {
        return districtId;
    }

    public void setDistrictId(TblDistrict districtId) {
        this.districtId = districtId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (customerId != null ? customerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblCustomer)) {
            return false;
        }
        TblCustomer other = (TblCustomer) object;
        if ((this.customerId == null && other.customerId != null) || (this.customerId != null && !this.customerId.equals(other.customerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblCustomer[ customerId=" + customerId + " ]";
    }

    @XmlTransient
    public Collection<TblCart> getTblCartCollection() {
        return tblCartCollection;
    }

    public void setTblCartCollection(Collection<TblCart> tblCartCollection) {
        this.tblCartCollection = tblCartCollection;
    }
    
}
