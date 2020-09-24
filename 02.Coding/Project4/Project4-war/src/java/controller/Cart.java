/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.TblCart;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import model.CartEntity;
import sb.TblCartFacadeLocal;
import sb.TblColorFacadeLocal;
import sb.TblProductFacadeLocal;
import sb.TblSizeFacadeLocal;

/**
 *
 * @author VĂN BÌNH
 */
@Named(value = "cart")
@SessionScoped
public class Cart implements Serializable {
    private CartEntity curcart = null;
    @EJB
    private TblSizeFacadeLocal tblSizeFacade;

    @EJB
    private TblProductFacadeLocal tblProductFacade;

    @EJB
    private TblColorFacadeLocal tblColorFacade;

    @EJB
    private TblCartFacadeLocal tblCartFacade;
    
    /**
     * Creates a new instance of Cart
     */
    public Cart() {
    }
    public List<TblCart> getCarts(){
        return tblCartFacade.findAll();
    }
    //them curbook 
    public String addCart(){    
        TblCart item = new TblCart();
        tblCartFacade.addCart(item);
        return null;
    }
    /**
     * @return the curcart
     */
    public CartEntity getCurcart() {
        return curcart;
    }

    /**
     * @param curcart the curcart to set
     */
    public void setCurcart(CartEntity curcart) {
        this.curcart = curcart;
    }
    
}
