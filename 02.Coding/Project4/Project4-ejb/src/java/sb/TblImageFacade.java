/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblImage;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author VĂN BÌNH
 */
@Stateless
public class TblImageFacade extends AbstractFacade<TblImage> implements TblImageFacadeLocal {

    @PersistenceContext(unitName = "Project4-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TblImageFacade() {
        super(TblImage.class);
    }
    
}
