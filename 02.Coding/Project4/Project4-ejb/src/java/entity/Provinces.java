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
@Table(name = "provinces")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Provinces.findAll", query = "SELECT p FROM Provinces p")
    , @NamedQuery(name = "Provinces.findByMatp", query = "SELECT p FROM Provinces p WHERE p.matp = :matp")
    , @NamedQuery(name = "Provinces.findByName", query = "SELECT p FROM Provinces p WHERE p.name = :name")
    , @NamedQuery(name = "Provinces.findByType", query = "SELECT p FROM Provinces p WHERE p.type = :type")})
public class Provinces implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "matp")
    private Integer matp;
    @Size(max = 50)
    @Column(name = "name")
    private String name;
    @Size(max = 50)
    @Column(name = "type")
    private String type;
    @OneToMany(mappedBy = "matp")
    private Collection<Wards> wardsCollection;

    public Provinces() {
    }

    public Provinces(Integer matp) {
        this.matp = matp;
    }

    public Integer getMatp() {
        return matp;
    }

    public void setMatp(Integer matp) {
        this.matp = matp;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @XmlTransient
    public Collection<Wards> getWardsCollection() {
        return wardsCollection;
    }

    public void setWardsCollection(Collection<Wards> wardsCollection) {
        this.wardsCollection = wardsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (matp != null ? matp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Provinces)) {
            return false;
        }
        Provinces other = (Provinces) object;
        if ((this.matp == null && other.matp != null) || (this.matp != null && !this.matp.equals(other.matp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Provinces[ matp=" + matp + " ]";
    }
    
}
