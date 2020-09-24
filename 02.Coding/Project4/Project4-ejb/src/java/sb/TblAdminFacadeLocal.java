/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblAdmin;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblAdminFacadeLocal {

    void create(TblAdmin tblAdmin);

    void edit(TblAdmin tblAdmin);

    void remove(TblAdmin tblAdmin);

    TblAdmin find(Object id);

    List<TblAdmin> findAll();

    List<TblAdmin> findRange(int[] range);

    int count();
    
}
