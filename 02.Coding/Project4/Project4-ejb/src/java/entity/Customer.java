/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "Customer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c")
    , @NamedQuery(name = "Customer.findByCusId", query = "SELECT c FROM Customer c WHERE c.cusId = :cusId")
    , @NamedQuery(name = "Customer.findByCusFirstName", query = "SELECT c FROM Customer c WHERE c.cusFirstName = :cusFirstName")
    , @NamedQuery(name = "Customer.findByCusLastName", query = "SELECT c FROM Customer c WHERE c.cusLastName = :cusLastName")
    , @NamedQuery(name = "Customer.findByCusUserName", query = "SELECT c FROM Customer c WHERE c.cusUserName = :cusUserName")
    , @NamedQuery(name = "Customer.findByCusPassword", query = "SELECT c FROM Customer c WHERE c.cusPassword = :cusPassword")
    , @NamedQuery(name = "Customer.findByCusAddress", query = "SELECT c FROM Customer c WHERE c.cusAddress = :cusAddress")
    , @NamedQuery(name = "Customer.findByCusPhone", query = "SELECT c FROM Customer c WHERE c.cusPhone = :cusPhone")
    , @NamedQuery(name = "Customer.findByCusEmail", query = "SELECT c FROM Customer c WHERE c.cusEmail = :cusEmail")
    , @NamedQuery(name = "Customer.findByCusPicture", query = "SELECT c FROM Customer c WHERE c.cusPicture = :cusPicture")
    , @NamedQuery(name = "Customer.findByCusGender", query = "SELECT c FROM Customer c WHERE c.cusGender = :cusGender")
    , @NamedQuery(name = "Customer.findByCusBirth", query = "SELECT c FROM Customer c WHERE c.cusBirth = :cusBirth")
    , @NamedQuery(name = "Customer.findByCusSubmit", query = "SELECT c FROM Customer c WHERE c.cusSubmit = :cusSubmit")
    , @NamedQuery(name = "Customer.findByCusSubmitText", query = "SELECT c FROM Customer c WHERE c.cusSubmitText = :cusSubmitText")
    , @NamedQuery(name = "Customer.findByCusSendEmailAuto", query = "SELECT c FROM Customer c WHERE c.cusSendEmailAuto = :cusSendEmailAuto")
    , @NamedQuery(name = "Customer.findByCusSendEmail", query = "SELECT c FROM Customer c WHERE c.cusSendEmail = :cusSendEmail")
    , @NamedQuery(name = "Customer.findByCusLang", query = "SELECT c FROM Customer c WHERE c.cusLang = :cusLang")})
public class Customer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "CusId")
    private Integer cusId;
    @Size(max = 100)
    @Column(name = "CusFirstName")
    private String cusFirstName;
    @Size(max = 100)
    @Column(name = "CusLastName")
    private String cusLastName;
    @Size(max = 100)
    @Column(name = "CusUserName")
    private String cusUserName;
    @Size(max = 100)
    @Column(name = "CusPassword")
    private String cusPassword;
    @Size(max = 2147483647)
    @Column(name = "CusAddress")
    private String cusAddress;
    @Size(max = 20)
    @Column(name = "CusPhone")
    private String cusPhone;
    @Size(max = 150)
    @Column(name = "CusEmail")
    private String cusEmail;
    @Size(max = 2147483647)
    @Column(name = "CusPicture")
    private String cusPicture;
    @Column(name = "CusGender")
    private Integer cusGender;
    @Column(name = "CusBirth")
    @Temporal(TemporalType.DATE)
    private Date cusBirth;
    @Column(name = "CusSubmit")
    private Integer cusSubmit;
    @Size(max = 10)
    @Column(name = "CusSubmitText")
    private String cusSubmitText;
    @Size(max = 20)
    @Column(name = "CusSendEmailAuto")
    private String cusSendEmailAuto;
    @Column(name = "CusSendEmail")
    private Integer cusSendEmail;
    @Column(name = "CusLang")
    private Integer cusLang;
    @JoinColumn(name = "maqh", referencedColumnName = "maqh")
    @ManyToOne
    private Wards maqh;

    public Customer() {
    }

    public Customer(Integer cusId) {
        this.cusId = cusId;
    }

    public Integer getCusId() {
        return cusId;
    }

    public void setCusId(Integer cusId) {
        this.cusId = cusId;
    }

    public String getCusFirstName() {
        return cusFirstName;
    }

    public void setCusFirstName(String cusFirstName) {
        this.cusFirstName = cusFirstName;
    }

    public String getCusLastName() {
        return cusLastName;
    }

    public void setCusLastName(String cusLastName) {
        this.cusLastName = cusLastName;
    }

    public String getCusUserName() {
        return cusUserName;
    }

    public void setCusUserName(String cusUserName) {
        this.cusUserName = cusUserName;
    }

    public String getCusPassword() {
        return cusPassword;
    }

    public void setCusPassword(String cusPassword) {
        this.cusPassword = cusPassword;
    }

    public String getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(String cusAddress) {
        this.cusAddress = cusAddress;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    public String getCusEmail() {
        return cusEmail;
    }

    public void setCusEmail(String cusEmail) {
        this.cusEmail = cusEmail;
    }

    public String getCusPicture() {
        return cusPicture;
    }

    public void setCusPicture(String cusPicture) {
        this.cusPicture = cusPicture;
    }

    public Integer getCusGender() {
        return cusGender;
    }

    public void setCusGender(Integer cusGender) {
        this.cusGender = cusGender;
    }

    public Date getCusBirth() {
        return cusBirth;
    }

    public void setCusBirth(Date cusBirth) {
        this.cusBirth = cusBirth;
    }

    public Integer getCusSubmit() {
        return cusSubmit;
    }

    public void setCusSubmit(Integer cusSubmit) {
        this.cusSubmit = cusSubmit;
    }

    public String getCusSubmitText() {
        return cusSubmitText;
    }

    public void setCusSubmitText(String cusSubmitText) {
        this.cusSubmitText = cusSubmitText;
    }

    public String getCusSendEmailAuto() {
        return cusSendEmailAuto;
    }

    public void setCusSendEmailAuto(String cusSendEmailAuto) {
        this.cusSendEmailAuto = cusSendEmailAuto;
    }

    public Integer getCusSendEmail() {
        return cusSendEmail;
    }

    public void setCusSendEmail(Integer cusSendEmail) {
        this.cusSendEmail = cusSendEmail;
    }

    public Integer getCusLang() {
        return cusLang;
    }

    public void setCusLang(Integer cusLang) {
        this.cusLang = cusLang;
    }

    public Wards getMaqh() {
        return maqh;
    }

    public void setMaqh(Wards maqh) {
        this.maqh = maqh;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cusId != null ? cusId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customer)) {
            return false;
        }
        Customer other = (Customer) object;
        if ((this.cusId == null && other.cusId != null) || (this.cusId != null && !this.cusId.equals(other.cusId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Customer[ cusId=" + cusId + " ]";
    }
    
}
