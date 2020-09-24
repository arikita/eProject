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
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sb.BookIdentityVnFacadeLocal;

/**
 *
 * @author Windows 18
 */
@Controller
@RequestMapping(value = "/home")
public class HomeController {

    BookIdentityVnFacadeLocal bookIdentityVnFacade = lookupBookIdentityVnFacadeLocal();
    
    
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello(ModelMap mm){
        mm.put("homepage", "hello");
        return "layoutuser/hello.jsp";
    }
    
    @RequestMapping(value = "/viewmau", method = RequestMethod.GET)
    public String viewmau(ModelMap mm, HttpServletRequest request){
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("homepage", "viewmau");
         mm.put("books", bookIdentityVnFacade.findAll() );
        return "layoutadmins/viewmau.jsp";
    }

    private BookIdentityVnFacadeLocal lookupBookIdentityVnFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (BookIdentityVnFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/BookIdentityVnFacade!sb.BookIdentityVnFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
