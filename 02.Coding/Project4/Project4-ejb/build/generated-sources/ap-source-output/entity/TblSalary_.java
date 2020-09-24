package entity;

import entity.TblAdmin;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-09-24T17:51:19")
@StaticMetamodel(TblSalary.class)
public class TblSalary_ { 

    public static volatile SingularAttribute<TblSalary, Integer> salaryBonus;
    public static volatile SingularAttribute<TblSalary, Integer> salaryDayOff;
    public static volatile SingularAttribute<TblSalary, Integer> salaryReduce;
    public static volatile SingularAttribute<TblSalary, Integer> salaryWorkingDay;
    public static volatile SingularAttribute<TblSalary, Integer> salaryOvertime;
    public static volatile SingularAttribute<TblSalary, String> salaryReduceDetail;
    public static volatile SingularAttribute<TblSalary, String> salaryOtherDetail;
    public static volatile SingularAttribute<TblSalary, Integer> salaryOther;
    public static volatile SingularAttribute<TblSalary, TblAdmin> adminId;
    public static volatile SingularAttribute<TblSalary, Integer> salaryAllowance;
    public static volatile SingularAttribute<TblSalary, Integer> salaryId;
    public static volatile SingularAttribute<TblSalary, Integer> salaryHoliday;

}