package entity;

import entity.TblImport;
import entity.TblProductColor;
import entity.TblSize;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T14:31:15")
@StaticMetamodel(TblProductColorSize.class)
public class TblProductColorSize_ { 

    public static volatile SingularAttribute<TblProductColorSize, TblSize> sizeId;
    public static volatile SingularAttribute<TblProductColorSize, TblProductColor> pcolorId;
    public static volatile SingularAttribute<TblProductColorSize, Integer> pcsizeId;
    public static volatile CollectionAttribute<TblProductColorSize, TblImport> tblImportCollection;
    public static volatile SingularAttribute<TblProductColorSize, String> pcsizeQrCode;

}