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
@Table(name = "tblImage")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblImage.findAll", query = "SELECT t FROM TblImage t")
    , @NamedQuery(name = "TblImage.findByImageId", query = "SELECT t FROM TblImage t WHERE t.imageId = :imageId")
    , @NamedQuery(name = "TblImage.findByImage1", query = "SELECT t FROM TblImage t WHERE t.image1 = :image1")
    , @NamedQuery(name = "TblImage.findByImage2", query = "SELECT t FROM TblImage t WHERE t.image2 = :image2")
    , @NamedQuery(name = "TblImage.findByImage3", query = "SELECT t FROM TblImage t WHERE t.image3 = :image3")
    , @NamedQuery(name = "TblImage.findByImage4", query = "SELECT t FROM TblImage t WHERE t.image4 = :image4")
    , @NamedQuery(name = "TblImage.findByImage5", query = "SELECT t FROM TblImage t WHERE t.image5 = :image5")})
public class TblImage implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "image_id")
    private Integer imageId;
    @Size(max = 2147483647)
    @Column(name = "image_1")
    private String image1;
    @Size(max = 2147483647)
    @Column(name = "image_2")
    private String image2;
    @Size(max = 2147483647)
    @Column(name = "image_3")
    private String image3;
    @Size(max = 2147483647)
    @Column(name = "image_4")
    private String image4;
    @Size(max = 2147483647)
    @Column(name = "image_5")
    private String image5;
    @OneToMany(mappedBy = "imageId")
    private Collection<TblProductColor> tblProductColorCollection;

    public TblImage() {
    }

    public TblImage(Integer imageId) {
        this.imageId = imageId;
    }

    public Integer getImageId() {
        return imageId;
    }

    public void setImageId(Integer imageId) {
        this.imageId = imageId;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getImage4() {
        return image4;
    }

    public void setImage4(String image4) {
        this.image4 = image4;
    }

    public String getImage5() {
        return image5;
    }

    public void setImage5(String image5) {
        this.image5 = image5;
    }

    @XmlTransient
    public Collection<TblProductColor> getTblProductColorCollection() {
        return tblProductColorCollection;
    }

    public void setTblProductColorCollection(Collection<TblProductColor> tblProductColorCollection) {
        this.tblProductColorCollection = tblProductColorCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (imageId != null ? imageId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblImage)) {
            return false;
        }
        TblImage other = (TblImage) object;
        if ((this.imageId == null && other.imageId != null) || (this.imageId != null && !this.imageId.equals(other.imageId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.TblImage[ imageId=" + imageId + " ]";
    }
    
}
