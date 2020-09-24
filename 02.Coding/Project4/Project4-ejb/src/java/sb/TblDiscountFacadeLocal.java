/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblDiscount;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblDiscountFacadeLocal {

    void create(TblDiscount tblDiscount);

    void edit(TblDiscount tblDiscount);

    void remove(TblDiscount tblDiscount);

    TblDiscount find(Object id);

    List<TblDiscount> findAll();

    List<TblDiscount> findRange(int[] range);

    int count();
    
}
