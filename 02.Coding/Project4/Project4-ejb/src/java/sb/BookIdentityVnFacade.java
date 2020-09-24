/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.BookIdentityVn;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Windows 18
 */
@Stateless
public class BookIdentityVnFacade extends AbstractFacade<BookIdentityVn> implements BookIdentityVnFacadeLocal {

    @PersistenceContext(unitName = "Project4-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookIdentityVnFacade() {
        super(BookIdentityVn.class);
    }
    
}
