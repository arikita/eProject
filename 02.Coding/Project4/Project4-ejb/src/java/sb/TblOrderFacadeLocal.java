/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblOrder;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblOrderFacadeLocal {

    void create(TblOrder tblOrder);

    void edit(TblOrder tblOrder);

    void remove(TblOrder tblOrder);

    TblOrder find(Object id);

    List<TblOrder> findAll();

    List<TblOrder> findRange(int[] range);

    int count();
    
}
