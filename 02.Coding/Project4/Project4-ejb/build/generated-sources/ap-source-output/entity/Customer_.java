package entity;

import entity.Wards;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T14:31:15")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, String> cusPicture;
    public static volatile SingularAttribute<Customer, Date> cusBirth;
    public static volatile SingularAttribute<Customer, String> cusUserName;
    public static volatile SingularAttribute<Customer, String> cusSubmitText;
    public static volatile SingularAttribute<Customer, String> cusSendEmailAuto;
    public static volatile SingularAttribute<Customer, Integer> cusLang;
    public static volatile SingularAttribute<Customer, String> cusFirstName;
    public static volatile SingularAttribute<Customer, String> cusPhone;
    public static volatile SingularAttribute<Customer, String> cusEmail;
    public static volatile SingularAttribute<Customer, Integer> cusId;
    public static volatile SingularAttribute<Customer, Integer> cusGender;
    public static volatile SingularAttribute<Customer, String> cusAddress;
    public static volatile SingularAttribute<Customer, Integer> cusSubmit;
    public static volatile SingularAttribute<Customer, String> cusLastName;
    public static volatile SingularAttribute<Customer, Wards> maqh;
    public static volatile SingularAttribute<Customer, Integer> cusSendEmail;
    public static volatile SingularAttribute<Customer, String> cusPassword;

}