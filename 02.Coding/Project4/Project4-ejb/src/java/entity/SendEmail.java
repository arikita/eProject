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
@Table(name = "SendEmail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SendEmail.findAll", query = "SELECT s FROM SendEmail s")
    , @NamedQuery(name = "SendEmail.findBySendEmail", query = "SELECT s FROM SendEmail s WHERE s.sendEmail = :sendEmail")
    , @NamedQuery(name = "SendEmail.findBySendEmailSubEn", query = "SELECT s FROM SendEmail s WHERE s.sendEmailSubEn = :sendEmailSubEn")
    , @NamedQuery(name = "SendEmail.findBySendEmailSubVn", query = "SELECT s FROM SendEmail s WHERE s.sendEmailSubVn = :sendEmailSubVn")
    , @NamedQuery(name = "SendEmail.findBySendEmailEn", query = "SELECT s FROM SendEmail s WHERE s.sendEmailEn = :sendEmailEn")
    , @NamedQuery(name = "SendEmail.findBySendEmailVN", query = "SELECT s FROM SendEmail s WHERE s.sendEmailVN = :sendEmailVN")})
public class SendEmail implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "SendEmail")
    private Integer sendEmail;
    @Size(max = 50)
    @Column(name = "SendEmailSubEn")
    private String sendEmailSubEn;
    @Size(max = 50)
    @Column(name = "SendEmailSubVn")
    private String sendEmailSubVn;
    @Size(max = 2147483647)
    @Column(name = "SendEmailEn")
    private String sendEmailEn;
    @Size(max = 2147483647)
    @Column(name = "SendEmailVN")
    private String sendEmailVN;

    public SendEmail() {
    }

    public SendEmail(Integer sendEmail) {
        this.sendEmail = sendEmail;
    }

    public Integer getSendEmail() {
        return sendEmail;
    }

    public void setSendEmail(Integer sendEmail) {
        this.sendEmail = sendEmail;
    }

    public String getSendEmailSubEn() {
        return sendEmailSubEn;
    }

    public void setSendEmailSubEn(String sendEmailSubEn) {
        this.sendEmailSubEn = sendEmailSubEn;
    }

    public String getSendEmailSubVn() {
        return sendEmailSubVn;
    }

    public void setSendEmailSubVn(String sendEmailSubVn) {
        this.sendEmailSubVn = sendEmailSubVn;
    }

    public String getSendEmailEn() {
        return sendEmailEn;
    }

    public void setSendEmailEn(String sendEmailEn) {
        this.sendEmailEn = sendEmailEn;
    }

    public String getSendEmailVN() {
        return sendEmailVN;
    }

    public void setSendEmailVN(String sendEmailVN) {
        this.sendEmailVN = sendEmailVN;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sendEmail != null ? sendEmail.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SendEmail)) {
            return false;
        }
        SendEmail other = (SendEmail) object;
        if ((this.sendEmail == null && other.sendEmail != null) || (this.sendEmail != null && !this.sendEmail.equals(other.sendEmail))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.SendEmail[ sendEmail=" + sendEmail + " ]";
    }
    
}
