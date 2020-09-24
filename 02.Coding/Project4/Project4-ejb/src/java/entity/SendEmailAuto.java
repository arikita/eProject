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
@Table(name = "SendEmailAuto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SendEmailAuto.findAll", query = "SELECT s FROM SendEmailAuto s")
    , @NamedQuery(name = "SendEmailAuto.findBySendEmailAutoId", query = "SELECT s FROM SendEmailAuto s WHERE s.sendEmailAutoId = :sendEmailAutoId")
    , @NamedQuery(name = "SendEmailAuto.findBySendEmailAutoSubVn", query = "SELECT s FROM SendEmailAuto s WHERE s.sendEmailAutoSubVn = :sendEmailAutoSubVn")
    , @NamedQuery(name = "SendEmailAuto.findBySendEmailAutoSubEn", query = "SELECT s FROM SendEmailAuto s WHERE s.sendEmailAutoSubEn = :sendEmailAutoSubEn")
    , @NamedQuery(name = "SendEmailAuto.findBySendEmailAutoVn", query = "SELECT s FROM SendEmailAuto s WHERE s.sendEmailAutoVn = :sendEmailAutoVn")
    , @NamedQuery(name = "SendEmailAuto.findBySendEmailAutoEn", query = "SELECT s FROM SendEmailAuto s WHERE s.sendEmailAutoEn = :sendEmailAutoEn")
    , @NamedQuery(name = "SendEmailAuto.findBySendEmailAutoDate", query = "SELECT s FROM SendEmailAuto s WHERE s.sendEmailAutoDate = :sendEmailAutoDate")
    , @NamedQuery(name = "SendEmailAuto.findByRole", query = "SELECT s FROM SendEmailAuto s WHERE s.role = :role")})
public class SendEmailAuto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "SendEmailAutoId")
    private Integer sendEmailAutoId;
    @Size(max = 50)
    @Column(name = "SendEmailAutoSubVn")
    private String sendEmailAutoSubVn;
    @Size(max = 50)
    @Column(name = "SendEmailAutoSubEn")
    private String sendEmailAutoSubEn;
    @Size(max = 2147483647)
    @Column(name = "SendEmailAutoVn")
    private String sendEmailAutoVn;
    @Size(max = 2147483647)
    @Column(name = "SendEmailAutoEn")
    private String sendEmailAutoEn;
    @Column(name = "SendEmailAutoDate")
    @Temporal(TemporalType.DATE)
    private Date sendEmailAutoDate;
    @Column(name = "Role")
    private Integer role;

    public SendEmailAuto() {
    }

    public SendEmailAuto(Integer sendEmailAutoId) {
        this.sendEmailAutoId = sendEmailAutoId;
    }

    public Integer getSendEmailAutoId() {
        return sendEmailAutoId;
    }

    public void setSendEmailAutoId(Integer sendEmailAutoId) {
        this.sendEmailAutoId = sendEmailAutoId;
    }

    public String getSendEmailAutoSubVn() {
        return sendEmailAutoSubVn;
    }

    public void setSendEmailAutoSubVn(String sendEmailAutoSubVn) {
        this.sendEmailAutoSubVn = sendEmailAutoSubVn;
    }

    public String getSendEmailAutoSubEn() {
        return sendEmailAutoSubEn;
    }

    public void setSendEmailAutoSubEn(String sendEmailAutoSubEn) {
        this.sendEmailAutoSubEn = sendEmailAutoSubEn;
    }

    public String getSendEmailAutoVn() {
        return sendEmailAutoVn;
    }

    public void setSendEmailAutoVn(String sendEmailAutoVn) {
        this.sendEmailAutoVn = sendEmailAutoVn;
    }

    public String getSendEmailAutoEn() {
        return sendEmailAutoEn;
    }

    public void setSendEmailAutoEn(String sendEmailAutoEn) {
        this.sendEmailAutoEn = sendEmailAutoEn;
    }

    public Date getSendEmailAutoDate() {
        return sendEmailAutoDate;
    }

    public void setSendEmailAutoDate(Date sendEmailAutoDate) {
        this.sendEmailAutoDate = sendEmailAutoDate;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sendEmailAutoId != null ? sendEmailAutoId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SendEmailAuto)) {
            return false;
        }
        SendEmailAuto other = (SendEmailAuto) object;
        if ((this.sendEmailAutoId == null && other.sendEmailAutoId != null) || (this.sendEmailAutoId != null && !this.sendEmailAutoId.equals(other.sendEmailAutoId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.SendEmailAuto[ sendEmailAutoId=" + sendEmailAutoId + " ]";
    }
    
}
