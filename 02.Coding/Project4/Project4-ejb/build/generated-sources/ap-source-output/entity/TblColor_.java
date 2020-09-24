package entity;

import entity.TblProductColor;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:19")
@StaticMetamodel(TblColor.class)
public class TblColor_ { 

    public static volatile SingularAttribute<TblColor, String> colorName;
    public static volatile CollectionAttribute<TblColor, TblProductColor> tblProductColorCollection;
    public static volatile SingularAttribute<TblColor, Integer> colorId;

}