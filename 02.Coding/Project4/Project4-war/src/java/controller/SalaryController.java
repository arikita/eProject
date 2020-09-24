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
import sb.TblSalaryFacadeLocal;

@Repository
@RequestMapping(value = "/salary")
public class SalaryController {

    TblSalaryFacadeLocal tblSalaryFacade = lookupTblSalaryFacadeLocal();
    
    @RequestMapping(value = "/viewall", method = RequestMethod.GET)
    public String viewall(ModelMap mm, HttpServletRequest request) {
        request.getSession().setAttribute("links", request.getContextPath());
        mm.put("salarys", tblSalaryFacade.findAll());
        mm.put("homepage", "salary");
        return "salary/viewall.jsp";
    }
    
    private TblSalaryFacadeLocal lookupTblSalaryFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (TblSalaryFacadeLocal) c.lookup("java:global/Project4/Project4-ejb/TblSalaryFacade!sb.TblSalaryFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
