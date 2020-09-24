/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblRevenue;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblRevenueFacadeLocal {

    void create(TblRevenue tblRevenue);

    void edit(TblRevenue tblRevenue);

    void remove(TblRevenue tblRevenue);

    TblRevenue find(Object id);

    List<TblRevenue> findAll();

    List<TblRevenue> findRange(int[] range);

    int count();
    
}
