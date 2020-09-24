/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblImportCheck;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblImportCheckFacadeLocal {

    void create(TblImportCheck tblImportCheck);

    void edit(TblImportCheck tblImportCheck);

    void remove(TblImportCheck tblImportCheck);

    TblImportCheck find(Object id);

    List<TblImportCheck> findAll();

    List<TblImportCheck> findRange(int[] range);

    int count();
    
}
