/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.SendEmailAuto;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author VĂN BÌNH
 */
@Stateless
public class SendEmailAutoFacade extends AbstractFacade<SendEmailAuto> implements SendEmailAutoFacadeLocal {

    @PersistenceContext(unitName = "Project4-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SendEmailAutoFacade() {
        super(SendEmailAuto.class);
    }
    
}
