/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.Provinces;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface ProvincesFacadeLocal {

    void create(Provinces provinces);

    void edit(Provinces provinces);

    void remove(Provinces provinces);

    Provinces find(Object id);

    List<Provinces> findAll();

    List<Provinces> findRange(int[] range);

    int count();
    
}
