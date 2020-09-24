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

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "tblImport")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblImport.findAll", query = "SELECT t FROM TblImport t")
    , @NamedQuery(name = "TblImport.findByImportId", query = "SELECT t FROM TblImport t WHERE t.importId = :importId")
    , @NamedQuery(name = "TblImport.findByImportQuantity", query = "SELECT t FROM TblImport t WHERE t.importQuantity = :importQuantity")
    , @NamedQuery(name = "TblImport.findByImportPrice", query = "SELECT t FROM TblImport t WHERE t.importPrice = :importPrice")
    , @NamedQuery(name = "TblImport.findByImportSource", query = "SELECT t FROM TblImport t WHERE t.importSource = :importSource")
    , @NamedQuery(name = "TblImport.findByImportDate", query = "SELECT t FROM TblImport t WHERE t.importDate = :importDate")
    , @NamedQuery(name = "TblImport.findByImportBill", query = "SELECT t FROM TblImport t WHERE t.importBill = :importBill")
    , @NamedQuery(name = "TblImport.findByImportRole", query = "SELECT t FROM TblImport t WHERE t.importRole = :importRole")})
public class TblImport implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "import_id")
    private Integer importId;
    @Column(name = "import_quantity")
    private Integer importQuantity;
    @Column(name = "import_price")
    private Integer importPrice;
    @Size(max = 2147483647)
    @Column(name = "import_source")
    private String importSource;
    @Column(name = "import_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date importDate;
    @Size(max = 50)
    @Column(name = "import_bill")
    private String importBill;
    @Column(name = "import_role")
    private Integer importRole;
    @OneToMany(mappedBy = "importId")
    private Collection<TblImportCheck> tblImportCheckCollection;
    @JoinColumn(name = "admin_id", referencedColumnName = "admin_id")
    @ManyToOne
    private TblAdmin adminId;
    @JoinColumn(name = "pcsize_id", referencedColumnName = "pcsize_id")
    @ManyToOne
    private TblProductColorSize pcsizeId;

    public TblImport() {
    }

    public TblImport(Integer importId) {
        this.importId = importId;
    }

    public Integer getImportId() {
        return importId;
    }

    public void setImportId(Integer importId) {
        this.importId = importId;
    }

    public Integer getImportQuantity() {
        return importQuantity;
    }

    public void setImportQuantity(Integer importQuantity) {
        this.importQuantity = importQuantity;
    }

    public Integer getImportPrice() {
        return importPrice;
    }

    public void setImportPrice(Integer importPrice) {
        this.importPrice = importPrice;
    }

    public String getImportSource() {
        return importSource;
    }

    public void setImportSource(String importSource) {
        this.importSource = importSource;
    }

    public Date getImportDate() {
        return importDate;
    }

    public void setImportDate(Date importDate) {
        this.importDate = importDate;
    }

    public String getImportBill() {
        return importBill;
    }

    public void setImportBill(String importBill) {
        this.importBill = importBill;
    }

    public Integer getImportRole() {
        return importRole;
    }

    public void setImportRole(Integer importRole) {
        this.importRole = importRole;
    }

    @XmlTransient
    public Collection<TblImportCheck> getTblImportCheckCollection() {
        return tblImportCheckCollection;
    }

    public void setTblImportCheckCollection(Collection<TblImportCheck> tblImportCheckCollection) {
        this.tblImportCheckCollection = tblImportCheckCollection;
    }

    public TblAdmin getAdminId() {
        return adminId;
    }

    public void setAdminId(TblAdmin adminId) {
        this.adminId = adminId;
    }

    public TblProductColorSize getPcsizeId() {
        return pcsizeId;
    }

    public void setPcsizeId(TblProductColorSize pcsizeId) {
        this.pcsizeId = pcsizeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (importId != null ? importId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblImport)) {
            return false;
        }
        TblImport other = (TblImport) object;
        if ((this.importId == null && other.importId != null) || (this.importId != null && !this.importId.equals(other.importId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblImport[ importId=" + importId + " ]";
    }
    
}
