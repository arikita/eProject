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
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author Windows 18
 */
public class AdminEntity {
    @Column(name = "admin_id")
    private Integer adminId;
    @Column(name = "admin_name")
    private String adminName;
    @Column(name = "admin_email")
    private String adminEmail;
    @Column(name = "admin_username")
    private String adminUsername;
    @Column(name = "admin_password")
    private String adminPassword;
    @Column(name = "admin_password_confirm")
    private String adminPasswordConfirm;
    @Column(name = "admin_mobile")
    private String adminMobile;
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
    @Column(name = "admin_role_all")
    private String adminRoleAll;
    @Column(name = "admin_language")
    private Integer adminLanguage;

    public AdminEntity(Integer adminId, String adminName, String adminEmail, String adminUsername, String adminPassword, String adminPasswordConfirm, String adminMobile, String adminPicture, Integer adminGender, Date adminBirthday, Integer adminRole, String adminRoleAll, Integer adminLanguage) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminEmail = adminEmail;
        this.adminUsername = adminUsername;
        this.adminPassword = adminPassword;
        this.adminPasswordConfirm = adminPasswordConfirm;
        this.adminMobile = adminMobile;
        this.adminPicture = adminPicture;
        this.adminGender = adminGender;
        this.adminBirthday = adminBirthday;
        this.adminRole = adminRole;
        this.adminRoleAll = adminRoleAll;
        this.adminLanguage = adminLanguage;
    }

    public AdminEntity() {
    }

    /**
     * @return the adminId
     */
    public Integer getAdminId() {
        return adminId;
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    /**
     * @return the adminName
     */
    public String getAdminName() {
        return adminName;
    }

    /**
     * @param adminName the adminName to set
     */
    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    /**
     * @return the adminEmail
     */
    public String getAdminEmail() {
        return adminEmail;
    }

    /**
     * @param adminEmail the adminEmail to set
     */
    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    /**
     * @return the adminUsername
     */
    public String getAdminUsername() {
        return adminUsername;
    }

    /**
     * @param adminUsername the adminUsername to set
     */
    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    /**
     * @return the adminPassword
     */
    public String getAdminPassword() {
        return adminPassword;
    }

    /**
     * @param adminPassword the adminPassword to set
     */
    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    /**
     * @return the adminPasswordConfirm
     */
    public String getAdminPasswordConfirm() {
        return adminPasswordConfirm;
    }

    /**
     * @param adminPasswordConfirm the adminPasswordConfirm to set
     */
    public void setAdminPasswordConfirm(String adminPasswordConfirm) {
        this.adminPasswordConfirm = adminPasswordConfirm;
    }

    /**
     * @return the adminMobile
     */
    public String getAdminMobile() {
        return adminMobile;
    }

    /**
     * @param adminMobile the adminMobile to set
     */
    public void setAdminMobile(String adminMobile) {
        this.adminMobile = adminMobile;
    }

    /**
     * @return the adminPicture
     */
    public String getAdminPicture() {
        return adminPicture;
    }

    /**
     * @param adminPicture the adminPicture to set
     */
    public void setAdminPicture(String adminPicture) {
        this.adminPicture = adminPicture;
    }

    /**
     * @return the adminGender
     */
    public Integer getAdminGender() {
        return adminGender;
    }

    /**
     * @param adminGender the adminGender to set
     */
    public void setAdminGender(Integer adminGender) {
        this.adminGender = adminGender;
    }

    /**
     * @return the adminBirthday
     */
    public Date getAdminBirthday() {
        return adminBirthday;
    }

    /**
     * @param adminBirthday the adminBirthday to set
     */
    public void setAdminBirthday(Date adminBirthday) {
        this.adminBirthday = adminBirthday;
    }

    /**
     * @return the adminRole
     */
    public Integer getAdminRole() {
        return adminRole;
    }

    /**
     * @param adminRole the adminRole to set
     */
    public void setAdminRole(Integer adminRole) {
        this.adminRole = adminRole;
    }

    /**
     * @return the adminRoleAll
     */
    public String getAdminRoleAll() {
        return adminRoleAll;
    }

    /**
     * @param adminRoleAll the adminRoleAll to set
     */
    public void setAdminRoleAll(String adminRoleAll) {
        this.adminRoleAll = adminRoleAll;
    }

    /**
     * @return the adminLanguage
     */
    public Integer getAdminLanguage() {
        return adminLanguage;
    }

    /**
     * @param adminLanguage the adminLanguage to set
     */
    public void setAdminLanguage(Integer adminLanguage) {
        this.adminLanguage = adminLanguage;
    }
    

}
