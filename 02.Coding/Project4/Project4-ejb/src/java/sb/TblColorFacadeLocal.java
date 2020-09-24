/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblColor;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblColorFacadeLocal {

    void create(TblColor tblColor);

    void edit(TblColor tblColor);

    void remove(TblColor tblColor);

    TblColor find(Object id);

    List<TblColor> findAll();

    List<TblColor> findRange(int[] range);

    int count();
    
}
