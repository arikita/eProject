package entity;

import entity.TblCart;
import entity.TblImport;
import entity.TblOrder;
import entity.TblSalary;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-21T17:56:55")
@StaticMetamodel(TblAdmin.class)
public class TblAdmin_ { 

    public static volatile SingularAttribute<TblAdmin, String> adminMobile;
    public static volatile SingularAttribute<TblAdmin, Date> adminBirthday;
    public static volatile CollectionAttribute<TblAdmin, TblOrder> tblOrderCollection;
    public static volatile SingularAttribute<TblAdmin, String> adminPicture;
    public static volatile SingularAttribute<TblAdmin, Integer> adminRole;
    public static volatile CollectionAttribute<TblAdmin, TblCart> tblCartCollection;
    public static volatile SingularAttribute<TblAdmin, String> adminName;
    public static volatile SingularAttribute<TblAdmin, String> adminUsername;
    public static volatile CollectionAttribute<TblAdmin, TblSalary> tblSalaryCollection;
    public static volatile CollectionAttribute<TblAdmin, TblImport> tblImportCollection;
    public static volatile SingularAttribute<TblAdmin, Integer> adminId;
    public static volatile SingularAttribute<TblAdmin, Integer> adminLanguage;
    public static volatile SingularAttribute<TblAdmin, String> adminRoleAll;
    public static volatile SingularAttribute<TblAdmin, Integer> adminGender;
    public static volatile SingularAttribute<TblAdmin, String> adminEmail;
    public static volatile SingularAttribute<TblAdmin, String> adminPassword;

}