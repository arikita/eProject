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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.format.annotation.DateTimeFormat;
/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "Admin")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Admin.findAll", query = "SELECT a FROM Admin a")
    , @NamedQuery(name = "Admin.findByAdminId", query = "SELECT a FROM Admin a WHERE a.adminId = :adminId")
    , @NamedQuery(name = "Admin.findByAdminName", query = "SELECT a FROM Admin a WHERE a.adminName = :adminName")
    , @NamedQuery(name = "Admin.findByAdminEmail", query = "SELECT a FROM Admin a WHERE a.adminEmail = :adminEmail")
    , @NamedQuery(name = "Admin.findByAdminUsername", query = "SELECT a FROM Admin a WHERE a.adminUsername = :adminUsername")
    , @NamedQuery(name = "Admin.findByAdminPassword", query = "SELECT a FROM Admin a WHERE a.adminPassword = :adminPassword")
    , @NamedQuery(name = "Admin.findByAdminPhone", query = "SELECT a FROM Admin a WHERE a.adminPhone = :adminPhone")
    , @NamedQuery(name = "Admin.findByAdminPicture", query = "SELECT a FROM Admin a WHERE a.adminPicture = :adminPicture")
    , @NamedQuery(name = "Admin.findByAdminGender", query = "SELECT a FROM Admin a WHERE a.adminGender = :adminGender")
    , @NamedQuery(name = "Admin.findByAdminBirth", query = "SELECT a FROM Admin a WHERE a.adminBirth = :adminBirth")
    , @NamedQuery(name = "Admin.findByRole", query = "SELECT a FROM Admin a WHERE a.role = :role")
    , @NamedQuery(name = "Admin.findByRole1", query = "SELECT a FROM Admin a WHERE a.role1 = :role1")
    , @NamedQuery(name = "Admin.findByRole2", query = "SELECT a FROM Admin a WHERE a.role2 = :role2")
    , @NamedQuery(name = "Admin.findByRole3", query = "SELECT a FROM Admin a WHERE a.role3 = :role3")
    , @NamedQuery(name = "Admin.findByRole4", query = "SELECT a FROM Admin a WHERE a.role4 = :role4")
    , @NamedQuery(name = "Admin.findByRole5", query = "SELECT a FROM Admin a WHERE a.role5 = :role5")
    , @NamedQuery(name = "Admin.findByRole6", query = "SELECT a FROM Admin a WHERE a.role6 = :role6")
    , @NamedQuery(name = "Admin.findByRole7", query = "SELECT a FROM Admin a WHERE a.role7 = :role7")
    , @NamedQuery(name = "Admin.findByRole8", query = "SELECT a FROM Admin a WHERE a.role8 = :role8")
    , @NamedQuery(name = "Admin.findByRole9", query = "SELECT a FROM Admin a WHERE a.role9 = :role9")
    , @NamedQuery(name = "Admin.findByRole10", query = "SELECT a FROM Admin a WHERE a.role10 = :role10")
    , @NamedQuery(name = "Admin.findByRole11", query = "SELECT a FROM Admin a WHERE a.role11 = :role11")
    , @NamedQuery(name = "Admin.findByRole12", query = "SELECT a FROM Admin a WHERE a.role12 = :role12")
    , @NamedQuery(name = "Admin.findByRole13", query = "SELECT a FROM Admin a WHERE a.role13 = :role13")
    , @NamedQuery(name = "Admin.findByRole14", query = "SELECT a FROM Admin a WHERE a.role14 = :role14")
    , @NamedQuery(name = "Admin.findByRole15", query = "SELECT a FROM Admin a WHERE a.role15 = :role15")
    , @NamedQuery(name = "Admin.findByRole16", query = "SELECT a FROM Admin a WHERE a.role16 = :role16")})
public class Admin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AdminId")
    private Integer adminId;
    @Size(max = 100)
    @Column(name = "AdminName")
    private String adminName;
    @Size(max = 150)
    @Column(name = "AdminEmail")
    private String adminEmail;
    @Size(max = 100)
    @Column(name = "AdminUsername")
    private String adminUsername;
    @Size(max = 100)
    @Column(name = "AdminPassword")
    private String adminPassword;
    @Size(max = 20)
    @Column(name = "AdminPhone")
    private String adminPhone;
    @Size(max = 2147483647)
    @Column(name = "AdminPicture")
    private String adminPicture;
    @Column(name = "AdminGender")
    private Integer adminGender;
    @Column(name = "AdminBirth")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date adminBirth;
    @Column(name = "Role")
    private Integer role;
    @Column(name = "Role1")
    private Integer role1;
    @Column(name = "Role2")
    private Integer role2;
    @Column(name = "Role3")
    private Integer role3;
    @Column(name = "Role4")
    private Integer role4;
    @Column(name = "Role5")
    private Integer role5;
    @Column(name = "Role6")
    private Integer role6;
    @Column(name = "Role7")
    private Integer role7;
    @Column(name = "Role8")
    private Integer role8;
    @Column(name = "Role9")
    private Integer role9;
    @Column(name = "Role10")
    private Integer role10;
    @Column(name = "Role11")
    private Integer role11;
    @Column(name = "Role12")
    private Integer role12;
    @Column(name = "Role13")
    private Integer role13;
    @Column(name = "Role14")
    private Integer role14;
    @Column(name = "Role15")
    private Integer role15;
    @Column(name = "Role16")
    private Integer role16;

    public Admin() {
    }

    public Admin(Integer adminId) {
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

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone;
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

    public Date getAdminBirth() {
        return adminBirth;
    }

    public void setAdminBirth(Date adminBirth) {
        this.adminBirth = adminBirth;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Integer getRole1() {
        return role1;
    }

    public void setRole1(Integer role1) {
        this.role1 = role1;
    }

    public Integer getRole2() {
        return role2;
    }

    public void setRole2(Integer role2) {
        this.role2 = role2;
    }

    public Integer getRole3() {
        return role3;
    }

    public void setRole3(Integer role3) {
        this.role3 = role3;
    }

    public Integer getRole4() {
        return role4;
    }

    public void setRole4(Integer role4) {
        this.role4 = role4;
    }

    public Integer getRole5() {
        return role5;
    }

    public void setRole5(Integer role5) {
        this.role5 = role5;
    }

    public Integer getRole6() {
        return role6;
    }

    public void setRole6(Integer role6) {
        this.role6 = role6;
    }

    public Integer getRole7() {
        return role7;
    }

    public void setRole7(Integer role7) {
        this.role7 = role7;
    }

    public Integer getRole8() {
        return role8;
    }

    public void setRole8(Integer role8) {
        this.role8 = role8;
    }

    public Integer getRole9() {
        return role9;
    }

    public void setRole9(Integer role9) {
        this.role9 = role9;
    }

    public Integer getRole10() {
        return role10;
    }

    public void setRole10(Integer role10) {
        this.role10 = role10;
    }

    public Integer getRole11() {
        return role11;
    }

    public void setRole11(Integer role11) {
        this.role11 = role11;
    }

    public Integer getRole12() {
        return role12;
    }

    public void setRole12(Integer role12) {
        this.role12 = role12;
    }

    public Integer getRole13() {
        return role13;
    }

    public void setRole13(Integer role13) {
        this.role13 = role13;
    }

    public Integer getRole14() {
        return role14;
    }

    public void setRole14(Integer role14) {
        this.role14 = role14;
    }

    public Integer getRole15() {
        return role15;
    }

    public void setRole15(Integer role15) {
        this.role15 = role15;
    }

    public Integer getRole16() {
        return role16;
    }

    public void setRole16(Integer role16) {
        this.role16 = role16;
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
        if (!(object instanceof Admin)) {
            return false;
        }
        Admin other = (Admin) object;
        if ((this.adminId == null && other.adminId != null) || (this.adminId != null && !this.adminId.equals(other.adminId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Admin[ adminId=" + adminId + " ]";
    }
    
}
