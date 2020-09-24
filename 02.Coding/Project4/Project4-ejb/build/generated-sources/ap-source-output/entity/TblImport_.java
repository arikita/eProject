package entity;

import entity.TblAdmin;
import entity.TblImportCheck;
import entity.TblProductColorSize;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:20")
@StaticMetamodel(TblImport.class)
public class TblImport_ { 

    public static volatile SingularAttribute<TblImport, Integer> importId;
    public static volatile SingularAttribute<TblImport, TblProductColorSize> pcsizeId;
    public static volatile SingularAttribute<TblImport, Date> importDate;
    public static volatile CollectionAttribute<TblImport, TblImportCheck> tblImportCheckCollection;
    public static volatile SingularAttribute<TblImport, Integer> importRole;
    public static volatile SingularAttribute<TblImport, String> importSource;
    public static volatile SingularAttribute<TblImport, String> importBill;
    public static volatile SingularAttribute<TblImport, TblAdmin> adminId;
    public static volatile SingularAttribute<TblImport, Integer> importQuantity;
    public static volatile SingularAttribute<TblImport, Integer> importPrice;

}