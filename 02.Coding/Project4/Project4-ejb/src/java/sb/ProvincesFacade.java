/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.Provinces;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author VĂN BÌNH
 */
@Stateless
public class ProvincesFacade extends AbstractFacade<Provinces> implements ProvincesFacadeLocal {

    @PersistenceContext(unitName = "Project4-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProvincesFacade() {
        super(Provinces.class);
    }
    
}
