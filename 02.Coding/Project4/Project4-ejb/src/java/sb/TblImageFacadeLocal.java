/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblImage;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Windows 18
 */
@Local
public interface TblImageFacadeLocal {

    void create(TblImage tblImage);

    void edit(TblImage tblImage);

    void remove(TblImage tblImage);

    TblImage find(Object id);

    List<TblImage> findAll();

    List<TblImage> findRange(int[] range);

    int count();
    
}
