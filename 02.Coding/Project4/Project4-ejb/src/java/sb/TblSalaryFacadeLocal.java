/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblSalary;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblSalaryFacadeLocal {

    void create(TblSalary tblSalary);

    void edit(TblSalary tblSalary);

    void remove(TblSalary tblSalary);

    TblSalary find(Object id);

    List<TblSalary> findAll();

    List<TblSalary> findRange(int[] range);

    int count();
    
}
