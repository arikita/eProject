package entity;

import entity.TblCart;
import entity.TblDiscount;
import entity.TblImportCheck;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T14:31:15")
@StaticMetamodel(TblWarehouse.class)
public class TblWarehouse_ { 

    public static volatile SingularAttribute<TblWarehouse, TblImportCheck> icheckId;
    public static volatile SingularAttribute<TblWarehouse, Integer> warehouseId;
    public static volatile SingularAttribute<TblWarehouse, Integer> warehouseQuantity;
    public static volatile CollectionAttribute<TblWarehouse, TblCart> tblCartCollection;
    public static volatile SingularAttribute<TblWarehouse, TblDiscount> discountId;
    public static volatile SingularAttribute<TblWarehouse, Date> warehouseDate;

}