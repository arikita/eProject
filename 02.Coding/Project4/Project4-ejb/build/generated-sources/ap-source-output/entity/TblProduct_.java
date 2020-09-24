package entity;

import entity.TblDiscount;
import entity.TblProductColor;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T14:31:15")
@StaticMetamodel(TblProduct.class)
public class TblProduct_ { 

    public static volatile SingularAttribute<TblProduct, String> productStyle;
    public static volatile CollectionAttribute<TblProduct, TblProductColor> tblProductColorCollection;
    public static volatile SingularAttribute<TblProduct, String> productCode;
    public static volatile SingularAttribute<TblProduct, Integer> productId;
    public static volatile SingularAttribute<TblProduct, String> productSeason;
    public static volatile SingularAttribute<TblProduct, String> productPicture;
    public static volatile SingularAttribute<TblProduct, TblDiscount> discountId;
    public static volatile SingularAttribute<TblProduct, String> productName;
    public static volatile SingularAttribute<TblProduct, BigDecimal> productPrice;
    public static volatile SingularAttribute<TblProduct, String> productDescription;
    public static volatile SingularAttribute<TblProduct, Integer> productActive;

}