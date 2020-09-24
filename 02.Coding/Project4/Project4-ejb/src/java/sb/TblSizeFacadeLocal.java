/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblSize;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblSizeFacadeLocal {

    void create(TblSize tblSize);

    void edit(TblSize tblSize);

    void remove(TblSize tblSize);

    TblSize find(Object id);

    List<TblSize> findAll();

    List<TblSize> findRange(int[] range);

    int count();
    
}
