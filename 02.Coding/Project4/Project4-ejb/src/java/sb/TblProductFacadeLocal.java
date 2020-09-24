/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblProduct;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblProductFacadeLocal {

    void create(TblProduct tblProduct);

    void edit(TblProduct tblProduct);

    void remove(TblProduct tblProduct);

    TblProduct find(Object id);

    List<TblProduct> findAll();

    List<TblProduct> findRange(int[] range);

    int count();
    
}
