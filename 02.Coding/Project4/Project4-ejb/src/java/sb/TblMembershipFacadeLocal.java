/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblMembership;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface TblMembershipFacadeLocal {

    void create(TblMembership tblMembership);

    void edit(TblMembership tblMembership);

    void remove(TblMembership tblMembership);

    TblMembership find(Object id);

    List<TblMembership> findAll();

    List<TblMembership> findRange(int[] range);

    int count();
    
}
