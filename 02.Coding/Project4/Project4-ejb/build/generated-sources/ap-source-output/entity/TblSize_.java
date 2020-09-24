package entity;

import entity.TblProductColorSize;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblSize.class)
public class TblSize_ { 

    public static volatile SingularAttribute<TblSize, Integer> sizeId;
    public static volatile CollectionAttribute<TblSize, TblProductColorSize> tblProductColorSizeCollection;
    public static volatile SingularAttribute<TblSize, Integer> sizeSize;

}