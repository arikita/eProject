package entity;

import entity.TblAdmin;
import entity.TblCustomer;
import entity.TblVoucher;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:20")
@StaticMetamodel(TblOrder.class)
public class TblOrder_ { 

    public static volatile SingularAttribute<TblOrder, Integer> orderId;
    public static volatile SingularAttribute<TblOrder, TblVoucher> voucherId;
    public static volatile SingularAttribute<TblOrder, TblAdmin> adminId;
    public static volatile SingularAttribute<TblOrder, TblCustomer> customerId;
    public static volatile SingularAttribute<TblOrder, Date> orderDate;
    public static volatile SingularAttribute<TblOrder, BigDecimal> orderTotal;

}