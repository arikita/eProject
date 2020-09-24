package entity;

import entity.TblAdmin;
import entity.TblCustomer;
import entity.TblWarehouse;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblCart.class)
public class TblCart_ { 

    public static volatile SingularAttribute<TblCart, TblWarehouse> warehouseId;
    public static volatile SingularAttribute<TblCart, Integer> cartId;
    public static volatile SingularAttribute<TblCart, TblAdmin> adminId;
    public static volatile SingularAttribute<TblCart, TblCustomer> customerId;
    public static volatile SingularAttribute<TblCart, Date> cartStartDate;
    public static volatile SingularAttribute<TblCart, Integer> cartQuantity;
    public static volatile SingularAttribute<TblCart, Integer> cartWarrantyEndDate;

}