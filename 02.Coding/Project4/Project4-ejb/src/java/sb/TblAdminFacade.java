/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblAdmin;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Windows 18
 */
@Stateless
public class TblAdminFacade extends AbstractFacade<TblAdmin> implements TblAdminFacadeLocal {

    @PersistenceContext(unitName = "Project4-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TblAdminFacade() {
        super(TblAdmin.class);
    }
    
}