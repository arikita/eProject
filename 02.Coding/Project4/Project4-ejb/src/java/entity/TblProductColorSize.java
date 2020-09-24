/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblProductColorSize")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblProductColorSize.findAll", query = "SELECT t FROM TblProductColorSize t")
    , @NamedQuery(name = "TblProductColorSize.findByPcsizeId", query = "SELECT t FROM TblProductColorSize t WHERE t.pcsizeId = :pcsizeId")
    , @NamedQuery(name = "TblProductColorSize.findByPcsizeQrCode", query = "SELECT t FROM TblProductColorSize t WHERE t.pcsizeQrCode = :pcsizeQrCode")})
public class TblProductColorSize implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "pcsize_id")
    private Integer pcsizeId;
    @Size(max = 2147483647)
    @Column(name = "pcsize_qr_code")
    private String pcsizeQrCode;
    @JoinColumn(name = "pcolor_id", referencedColumnName = "pcolor_id")
    @ManyToOne
    private TblProductColor pcolorId;
    @JoinColumn(name = "size_id", referencedColumnName = "size_id")
    @ManyToOne
    private TblSize sizeId;
    @OneToMany(mappedBy = "pcsizeId")
    private Collection<TblImport> tblImportCollection;

    public TblProductColorSize() {
    }

    public TblProductColorSize(Integer pcsizeId) {
        this.pcsizeId = pcsizeId;
    }

    public Integer getPcsizeId() {
        return pcsizeId;
    }

    public void setPcsizeId(Integer pcsizeId) {
        this.pcsizeId = pcsizeId;
    }

    public String getPcsizeQrCode() {
        return pcsizeQrCode;
    }

    public void setPcsizeQrCode(String pcsizeQrCode) {
        this.pcsizeQrCode = pcsizeQrCode;
    }

    public TblProductColor getPcolorId() {
        return pcolorId;
    }

    public void setPcolorId(TblProductColor pcolorId) {
        this.pcolorId = pcolorId;
    }

    public TblSize getSizeId() {
        return sizeId;
    }

    public void setSizeId(TblSize sizeId) {
        this.sizeId = sizeId;
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
        hash += (pcsizeId != null ? pcsizeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblProductColorSize)) {
            return false;
        }
        TblProductColorSize other = (TblProductColorSize) object;
        if ((this.pcsizeId == null && other.pcsizeId != null) || (this.pcsizeId != null && !this.pcsizeId.equals(other.pcsizeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblProductColorSize[ pcsizeId=" + pcsizeId + " ]";
    }
    
}
