/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblProductColor;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblProductColorFacadeLocal {

    void create(TblProductColor tblProductColor);

    void edit(TblProductColor tblProductColor);

    void remove(TblProductColor tblProductColor);

    TblProductColor find(Object id);

    List<TblProductColor> findAll();

    List<TblProductColor> findRange(int[] range);

    int count();
    
}
