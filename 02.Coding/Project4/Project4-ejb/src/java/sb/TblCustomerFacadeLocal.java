/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblCustomer;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblCustomerFacadeLocal {

    void create(TblCustomer tblCustomer);

    void edit(TblCustomer tblCustomer);

    void remove(TblCustomer tblCustomer);

    TblCustomer find(Object id);

    List<TblCustomer> findAll();

    List<TblCustomer> findRange(int[] range);

    int count();
    
}
