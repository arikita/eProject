/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblProvince;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblProvinceFacadeLocal {

    void create(TblProvince tblProvince);

    void edit(TblProvince tblProvince);

    void remove(TblProvince tblProvince);

    TblProvince find(Object id);

    List<TblProvince> findAll();

    List<TblProvince> findRange(int[] range);

    int count();
    
}
