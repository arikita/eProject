/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sb;

import entity.TblCart;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Windows 18
 */
@Stateless
public class TblCartFacade extends AbstractFacade<TblCart> implements TblCartFacadeLocal {

    @PersistenceContext(unitName = "Project4-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TblCartFacade() {
        super(TblCart.class);
    }
    private List<TblCart> carts = new ArrayList<>();
    

    @Override
    public void addCart(TblCart item) {
        int count=0;
        for (TblCart ca : carts) {
            if(ca.getProductId()==item.getProductId()){
                ca.setCartQuantity(ca.getCartQuantity()+1);
                count =1;
            }
        }
        if(count==0){
            carts.add(item);
        }
    } 
}
