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
@Table(name = "wards")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Wards.findAll", query = "SELECT w FROM Wards w")
    , @NamedQuery(name = "Wards.findByMaqh", query = "SELECT w FROM Wards w WHERE w.maqh = :maqh")
    , @NamedQuery(name = "Wards.findByName", query = "SELECT w FROM Wards w WHERE w.name = :name")
    , @NamedQuery(name = "Wards.findByType", query = "SELECT w FROM Wards w WHERE w.type = :type")})
public class Wards implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "maqh")
    private Integer maqh;
    @Size(max = 50)
    @Column(name = "name")
    private String name;
    @Size(max = 50)
    @Column(name = "type")
    private String type;
    @OneToMany(mappedBy = "maqh")
    private Collection<Customer> customerCollection;
    @JoinColumn(name = "matp", referencedColumnName = "matp")
    @ManyToOne
    private Provinces matp;

    public Wards() {
    }

    public Wards(Integer maqh) {
        this.maqh = maqh;
    }

    public Integer getMaqh() {
        return maqh;
    }

    public void setMaqh(Integer maqh) {
        this.maqh = maqh;
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
    public Collection<Customer> getCustomerCollection() {
        return customerCollection;
    }

    public void setCustomerCollection(Collection<Customer> customerCollection) {
        this.customerCollection = customerCollection;
    }

    public Provinces getMatp() {
        return matp;
    }

    public void setMatp(Provinces matp) {
        this.matp = matp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maqh != null ? maqh.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Wards)) {
            return false;
        }
        Wards other = (Wards) object;
        if ((this.maqh == null && other.maqh != null) || (this.maqh != null && !this.maqh.equals(other.maqh))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Wards[ maqh=" + maqh + " ]";
    }
    
}
