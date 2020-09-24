/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblVoucher;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblVoucherFacadeLocal {

    void create(TblVoucher tblVoucher);

    void edit(TblVoucher tblVoucher);

    void remove(TblVoucher tblVoucher);

    TblVoucher find(Object id);

    List<TblVoucher> findAll();

    List<TblVoucher> findRange(int[] range);

    int count();
    
}
