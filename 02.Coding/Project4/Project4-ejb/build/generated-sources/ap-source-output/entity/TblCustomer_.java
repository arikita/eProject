package entity;

import entity.TblDistrict;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblCustomer.class)
public class TblCustomer_ { 

    public static volatile SingularAttribute<TblCustomer, String> customerAddress;
    public static volatile SingularAttribute<TblCustomer, TblDistrict> districtId;
    public static volatile SingularAttribute<TblCustomer, String> customerFirstName;
    public static volatile SingularAttribute<TblCustomer, String> customerEmail;
    public static volatile SingularAttribute<TblCustomer, Integer> customerGender;
    public static volatile SingularAttribute<TblCustomer, Integer> customerId;
    public static volatile SingularAttribute<TblCustomer, Date> customerBirthday;
    public static volatile SingularAttribute<TblCustomer, String> customerLastName;
    public static volatile SingularAttribute<TblCustomer, String> customerMobile;
    public static volatile SingularAttribute<TblCustomer, String> customerPicture;

}