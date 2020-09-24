package entity;

import entity.TblOrder;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblVoucher.class)
public class TblVoucher_ { 

    public static volatile SingularAttribute<TblVoucher, String> voucherStartDate;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherMin;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherMax;
    public static volatile SingularAttribute<TblVoucher, String> voucherName;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherCash;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherLimit;
    public static volatile CollectionAttribute<TblVoucher, TblOrder> tblOrderCollection;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherId;
    public static volatile SingularAttribute<TblVoucher, Date> voucherEndDate;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherRole;
    public static volatile SingularAttribute<TblVoucher, Integer> voucherPercent;
    public static volatile SingularAttribute<TblVoucher, String> voucherDescription;

}