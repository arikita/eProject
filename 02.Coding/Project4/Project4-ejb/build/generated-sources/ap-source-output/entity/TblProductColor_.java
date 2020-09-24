package entity;

import entity.TblColor;
import entity.TblImage;
import entity.TblProduct;
import entity.TblProductColorSize;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblProductColor.class)
public class TblProductColor_ { 

    public static volatile SingularAttribute<TblProductColor, Integer> pcolorId;
    public static volatile SingularAttribute<TblProductColor, TblImage> imageId;
    public static volatile SingularAttribute<TblProductColor, TblProduct> productId;
    public static volatile SingularAttribute<TblProductColor, TblColor> colorId;
    public static volatile CollectionAttribute<TblProductColor, TblProductColorSize> tblProductColorSizeCollection;

}