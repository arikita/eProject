package entity;

import entity.TblDistrict;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:20")
@StaticMetamodel(TblProvince.class)
public class TblProvince_ { 

    public static volatile SingularAttribute<TblProvince, String> provinceType;
    public static volatile CollectionAttribute<TblProvince, TblDistrict> tblDistrictCollection;
    public static volatile SingularAttribute<TblProvince, String> provinceName;
    public static volatile SingularAttribute<TblProvince, Integer> provinceId;

}