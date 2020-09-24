/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
@Table(name = "tblImportCheck")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblImportCheck.findAll", query = "SELECT t FROM TblImportCheck t")
    , @NamedQuery(name = "TblImportCheck.findByIcheckId", query = "SELECT t FROM TblImportCheck t WHERE t.icheckId = :icheckId")
    , @NamedQuery(name = "TblImportCheck.findByIcheckAdmin", query = "SELECT t FROM TblImportCheck t WHERE t.icheckAdmin = :icheckAdmin")
    , @NamedQuery(name = "TblImportCheck.findByIcheckOut", query = "SELECT t FROM TblImportCheck t WHERE t.icheckOut = :icheckOut")
    , @NamedQuery(name = "TblImportCheck.findByIcheckDetail", query = "SELECT t FROM TblImportCheck t WHERE t.icheckDetail = :icheckDetail")})
public class TblImportCheck implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "icheck_id")
    private Integer icheckId;
    @Column(name = "icheck_admin")
    private Integer icheckAdmin;
    @Column(name = "icheck_out")
    private Integer icheckOut;
    @Size(max = 50)
    @Column(name = "icheck_detail")
    private String icheckDetail;
    @JoinColumn(name = "import_id", referencedColumnName = "import_id")
    @ManyToOne
    private TblImport importId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "icheckId")
    private Collection<TblWarehouse> tblWarehouseCollection;

    public TblImportCheck() {
    }

    public TblImportCheck(Integer icheckId) {
        this.icheckId = icheckId;
    }

    public Integer getIcheckId() {
        return icheckId;
    }

    public void setIcheckId(Integer icheckId) {
        this.icheckId = icheckId;
    }

    public Integer getIcheckAdmin() {
        return icheckAdmin;
    }

    public void setIcheckAdmin(Integer icheckAdmin) {
        this.icheckAdmin = icheckAdmin;
    }

    public Integer getIcheckOut() {
        return icheckOut;
    }

    public void setIcheckOut(Integer icheckOut) {
        this.icheckOut = icheckOut;
    }

    public String getIcheckDetail() {
        return icheckDetail;
    }

    public void setIcheckDetail(String icheckDetail) {
        this.icheckDetail = icheckDetail;
    }

    public TblImport getImportId() {
        return importId;
    }

    public void setImportId(TblImport importId) {
        this.importId = importId;
    }

    @XmlTransient
    public Collection<TblWarehouse> getTblWarehouseCollection() {
        return tblWarehouseCollection;
    }

    public void setTblWarehouseCollection(Collection<TblWarehouse> tblWarehouseCollection) {
        this.tblWarehouseCollection = tblWarehouseCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (icheckId != null ? icheckId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblImportCheck)) {
            return false;
        }
        TblImportCheck other = (TblImportCheck) object;
        if ((this.icheckId == null && other.icheckId != null) || (this.icheckId != null && !this.icheckId.equals(other.icheckId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblImportCheck[ icheckId=" + icheckId + " ]";
    }
    
}
