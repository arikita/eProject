/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblDistrict;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblDistrictFacadeLocal {

    void create(TblDistrict tblDistrict);

    void edit(TblDistrict tblDistrict);

    void remove(TblDistrict tblDistrict);

    TblDistrict find(Object id);

    List<TblDistrict> findAll();

    List<TblDistrict> findRange(int[] range);

    int count();
    
}
