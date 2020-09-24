/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblImport;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblImportFacadeLocal {

    void create(TblImport tblImport);

    void edit(TblImport tblImport);

    void remove(TblImport tblImport);

    TblImport find(Object id);

    List<TblImport> findAll();

    List<TblImport> findRange(int[] range);

    int count();
    
}
