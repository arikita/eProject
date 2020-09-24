/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sb.TblProductFacadeLocal;

@Repository
@RequestMapping(value = "/product")
public class ProductController {

    TblProductFacadeLocal tblProductFacade = lookupTblProductFacadeLocal();  
    
    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("products", tblProductFacade.findAll());
        mm.put("homepage", "product");
        return "product/viewall.jsp";
    }
    
    private TblProductFacadeLocal lookupTblProductFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblProductFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblProductFacade!sb.TblProductFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
