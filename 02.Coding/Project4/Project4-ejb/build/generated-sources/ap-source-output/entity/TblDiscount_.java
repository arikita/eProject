package entity;

import entity.TblProduct;
import entity.TblWarehouse;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblDiscount.class)
public class TblDiscount_ { 

    public static volatile SingularAttribute<TblDiscount, Date> discountEndDate;
    public static volatile SingularAttribute<TblDiscount, Integer> discountPercent;
    public static volatile SingularAttribute<TblDiscount, String> discountTitle;
    public static volatile SingularAttribute<TblDiscount, Integer> discountRole;
    public static volatile SingularAttribute<TblDiscount, BigDecimal> discountPrice;
    public static volatile CollectionAttribute<TblDiscount, TblWarehouse> tblWarehouseCollection;
    public static volatile CollectionAttribute<TblDiscount, TblProduct> tblProductCollection;
    public static volatile SingularAttribute<TblDiscount, Integer> discountId;
    public static volatile SingularAttribute<TblDiscount, String> discountDescription;
    public static volatile SingularAttribute<TblDiscount, Date> discountStartDate;

}