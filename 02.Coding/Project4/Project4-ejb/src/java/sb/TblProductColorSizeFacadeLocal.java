/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblProductColorSize;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblProductColorSizeFacadeLocal {

    void create(TblProductColorSize tblProductColorSize);

    void edit(TblProductColorSize tblProductColorSize);

    void remove(TblProductColorSize tblProductColorSize);

    TblProductColorSize find(Object id);

    List<TblProductColorSize> findAll();

    List<TblProductColorSize> findRange(int[] range);

    int count();
    
}
