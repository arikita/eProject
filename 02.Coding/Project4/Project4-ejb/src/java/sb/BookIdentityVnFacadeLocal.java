/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.BookIdentityVn;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author VĂN BÌNH
 */
@Local
public interface BookIdentityVnFacadeLocal {

    void create(BookIdentityVn bookIdentityVn);

    void edit(BookIdentityVn bookIdentityVn);

    void remove(BookIdentityVn bookIdentityVn);

    BookIdentityVn find(Object id);

    List<BookIdentityVn> findAll();

    List<BookIdentityVn> findRange(int[] range);

    int count();
    
}
