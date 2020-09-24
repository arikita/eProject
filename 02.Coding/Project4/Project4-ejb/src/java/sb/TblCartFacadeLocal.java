/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblCart;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblCartFacadeLocal {

    void create(TblCart tblCart);

    void edit(TblCart tblCart);

    void remove(TblCart tblCart);

    TblCart find(Object id);

    List<TblCart> findAll();

    List<TblCart> findRange(int[] range);

    int count();

    void addCart(TblCart item);
    
}
