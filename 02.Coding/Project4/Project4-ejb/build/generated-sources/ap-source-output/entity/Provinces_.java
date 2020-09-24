package entity;

import entity.Wards;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:20")
@StaticMetamodel(Provinces.class)
public class Provinces_ { 

    public static volatile SingularAttribute<Provinces, Integer> matp;
    public static volatile SingularAttribute<Provinces, String> name;
    public static volatile SingularAttribute<Provinces, String> type;
    public static volatile CollectionAttribute<Provinces, Wards> wardsCollection;

}