/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.Wards;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface WardsFacadeLocal {

    void create(Wards wards);

    void edit(Wards wards);

    void remove(Wards wards);

    Wards find(Object id);

    List<Wards> findAll();

    List<Wards> findRange(int[] range);

    int count();
    
}
