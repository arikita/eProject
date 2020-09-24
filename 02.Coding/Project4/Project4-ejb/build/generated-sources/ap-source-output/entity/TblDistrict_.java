package entity;

import entity.TblCustomer;
import entity.TblProvince;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T14:31:15")
@StaticMetamodel(TblDistrict.class)
public class TblDistrict_ { 

    public static volatile SingularAttribute<TblDistrict, Integer> districtId;
    public static volatile SingularAttribute<TblDistrict, String> districtName;
    public static volatile SingularAttribute<TblDistrict, String> districtType;
    public static volatile CollectionAttribute<TblDistrict, TblCustomer> tblCustomerCollection;
    public static volatile SingularAttribute<TblDistrict, TblProvince> provinceId;

}