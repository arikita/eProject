/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblWarehouse;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblWarehouseFacadeLocal {

    void create(TblWarehouse tblWarehouse);

    void edit(TblWarehouse tblWarehouse);

    void remove(TblWarehouse tblWarehouse);

    TblWarehouse find(Object id);

    List<TblWarehouse> findAll();

    List<TblWarehouse> findRange(int[] range);

    int count();
    
}
