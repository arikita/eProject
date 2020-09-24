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
 * @author Windows 18
 */
@Entity
@Table(name = "tblAdmin")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblAdmin.findAll", query = "SELECT t FROM TblAdmin t")
    , @NamedQuery(name = "TblAdmin.findByAdminId", query = "SELECT t FROM TblAdmin t WHERE t.adminId = :adminId")
    , @NamedQuery(name = "TblAdmin.findByAdminName", query = "SELECT t FROM TblAdmin t WHERE t.adminName = :adminName")
    , @NamedQuery(name = "TblAdmin.findByAdminEmail", query = "SELECT t FROM TblAdmin t WHERE t.adminEmail = :adminEmail")
    , @NamedQuery(name = "TblAdmin.findByAdminUsername", query = "SELECT t FROM TblAdmin t WHERE t.adminUsername = :adminUsername")
    , @NamedQuery(name = "TblAdmin.findByAdminPassword", query = "SELECT t FROM TblAdmin t WHERE t.adminPassword = :adminPassword")
    , @NamedQuery(name = "TblAdmin.findByAdminMobile", query = "SELECT t FROM TblAdmin t WHERE t.adminMobile = :adminMobile")
    , @NamedQuery(name = "TblAdmin.findByAdminPicture", query = "SELECT t FROM TblAdmin t WHERE t.adminPicture = :adminPicture")
    , @NamedQuery(name = "TblAdmin.findByAdminGender", query = "SELECT t FROM TblAdmin t WHERE t.adminGender = :adminGender")
    , @NamedQuery(name = "TblAdmin.findByAdminBirthday", query = "SELECT t FROM TblAdmin t WHERE t.adminBirthday = :adminBirthday")
    , @NamedQuery(name = "TblAdmin.findByAdminRole", query = "SELECT t FROM TblAdmin t WHERE t.adminRole = :adminRole")
    , @NamedQuery(name = "TblAdmin.findByAdminRoleAll", query = "SELECT t FROM TblAdmin t WHERE t.adminRoleAll = :adminRoleAll")
    , @NamedQuery(name = "TblAdmin.findByAdminLanguage", query = "SELECT t FROM TblAdmin t WHERE t.adminLanguage = :adminLanguage")})
public class TblAdmin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "admin_id")
    private Integer adminId;
    @Size(max = 100)
    @Column(name = "admin_name")
    private String adminName;
    @Size(max = 150)
    @Column(name = "admin_email")
    private String adminEmail;
    @Size(max = 100)
    @Column(name = "admin_username")
    private String adminUsername;
    @Size(max = 100)
    @Column(name = "admin_password")
    private String adminPassword;
    @Size(max = 20)
    @Column(name = "admin_mobile")
    private String adminMobile;
    @Size(max = 2147483647)
    @Column(name = "admin_picture")
    private String adminPicture;
    @Column(name = "admin_gender")
    private Integer adminGender;
    @Column(name = "admin_birthday")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date adminBirthday;
    @Column(name = "admin_role")
    private Integer adminRole;
    @Size(max = 150)
    @Column(name = "admin_role_all")
    private String adminRoleAll;
    @Column(name = "admin_language")
    private Integer adminLanguage;
    @OneToMany(mappedBy = "adminId")
    private Collection<TblCart> tblCartCollection;
    @OneToMany(mappedBy = "adminId")
    private Collection<TblSalary> tblSalaryCollection;
    @OneToMany(mappedBy = "adminId")
    private Collection<TblOrder> tblOrderCollection;
    @OneToMany(mappedBy = "adminId")
    private Collection<TblImport> tblImportCollection;

    public TblAdmin() {
    }

    public TblAdmin(Integer adminId) {
        this.adminId = adminId;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAdminMobile() {
        return adminMobile;
    }

    public void setAdminMobile(String adminMobile) {
        this.adminMobile = adminMobile;
    }

    public String getAdminPicture() {
        return adminPicture;
    }

    public void setAdminPicture(String adminPicture) {
        this.adminPicture = adminPicture;
    }

    public Integer getAdminGender() {
        return adminGender;
    }

    public void setAdminGender(Integer adminGender) {
        this.adminGender = adminGender;
    }

    public Date getAdminBirthday() {
        return adminBirthday;
    }

    public void setAdminBirthday(Date adminBirthday) {
        this.adminBirthday = adminBirthday;
    }

    public Integer getAdminRole() {
        return adminRole;
    }

    public void setAdminRole(Integer adminRole) {
        this.adminRole = adminRole;
    }

    public String getAdminRoleAll() {
        return adminRoleAll;
    }

    public void setAdminRoleAll(String adminRoleAll) {
        this.adminRoleAll = adminRoleAll;
    }

    public Integer getAdminLanguage() {
        return adminLanguage;
    }

    public void setAdminLanguage(Integer adminLanguage) {
        this.adminLanguage = adminLanguage;
    }

    @XmlTransient
    public Collection<TblCart> getTblCartCollection() {
        return tblCartCollection;
    }

    public void setTblCartCollection(Collection<TblCart> tblCartCollection) {
        this.tblCartCollection = tblCartCollection;
    }

    @XmlTransient
    public Collection<TblSalary> getTblSalaryCollection() {
        return tblSalaryCollection;
    }

    public void setTblSalaryCollection(Collection<TblSalary> tblSalaryCollection) {
        this.tblSalaryCollection = tblSalaryCollection;
    }

    @XmlTransient
    public Collection<TblOrder> getTblOrderCollection() {
        return tblOrderCollection;
    }

    public void setTblOrderCollection(Collection<TblOrder> tblOrderCollection) {
        this.tblOrderCollection = tblOrderCollection;
    }

    @XmlTransient
    public Collection<TblImport> getTblImportCollection() {
        return tblImportCollection;
    }

    public void setTblImportCollection(Collection<TblImport> tblImportCollection) {
        this.tblImportCollection = tblImportCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (adminId != null ? adminId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblAdmin)) {
            return false;
        }
        TblAdmin other = (TblAdmin) object;
        if ((this.adminId == null && other.adminId != null) || (this.adminId != null && !this.adminId.equals(other.adminId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblAdmin[ adminId=" + adminId + " ]";
    }
    
}
