package entity;

import entity.TblImport;
import entity.TblWarehouse;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:20")
@StaticMetamodel(TblImportCheck.class)
public class TblImportCheck_ { 

    public static volatile SingularAttribute<TblImportCheck, Integer> icheckId;
    public static volatile SingularAttribute<TblImportCheck, String> icheckDetail;
    public static volatile SingularAttribute<TblImportCheck, Integer> icheckOut;
    public static volatile SingularAttribute<TblImportCheck, TblImport> importId;
    public static volatile CollectionAttribute<TblImportCheck, TblWarehouse> tblWarehouseCollection;
    public static volatile SingularAttribute<TblImportCheck, Integer> icheckAdmin;

}