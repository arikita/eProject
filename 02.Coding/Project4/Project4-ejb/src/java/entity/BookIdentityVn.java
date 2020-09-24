/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.format.annotation.NumberFormat;

/**
 *
 * @author Windows 18
 */
@Entity
@Table(name = "BookIdentityVn")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BookIdentityVn.findAll", query = "SELECT b FROM BookIdentityVn b")
    , @NamedQuery(name = "BookIdentityVn.findById", query = "SELECT b FROM BookIdentityVn b WHERE b.id = :id")
    , @NamedQuery(name = "BookIdentityVn.findByTile", query = "SELECT b FROM BookIdentityVn b WHERE b.tile = :tile")
    , @NamedQuery(name = "BookIdentityVn.findByPrice", query = "SELECT b FROM BookIdentityVn b WHERE b.price = :price")
    , @NamedQuery(name = "BookIdentityVn.findByName", query = "SELECT b FROM BookIdentityVn b WHERE b.name = :name")
    , @NamedQuery(name = "BookIdentityVn.findByRole", query = "SELECT b FROM BookIdentityVn b WHERE b.role = :role")})
public class BookIdentityVn implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Size(max = 50)
    @Column(name = "tile")
    private String tile;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "price")
    private BigDecimal price;
    @Size(max = 50)
    @Column(name = "name")
    private String name;
    @Column(name = "role")
    private Integer role;

    public BookIdentityVn() {
    }

    public BookIdentityVn(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTile() {
        return tile;
    }

    public void setTile(String tile) {
        this.tile = tile;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BookIdentityVn)) {
            return false;
        }
        BookIdentityVn other = (BookIdentityVn) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.BookIdentityVn[ id=" + id + " ]";
    }
    
}
