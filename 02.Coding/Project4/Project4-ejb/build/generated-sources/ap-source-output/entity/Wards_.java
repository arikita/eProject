package entity;

import entity.Customer;
import entity.Provinces;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T14:31:15")
@StaticMetamodel(Wards.class)
public class Wards_ { 

    public static volatile SingularAttribute<Wards, Provinces> matp;
    public static volatile CollectionAttribute<Wards, Customer> customerCollection;
    public static volatile SingularAttribute<Wards, Integer> maqh;
    public static volatile SingularAttribute<Wards, String> name;
    public static volatile SingularAttribute<Wards, String> type;

}