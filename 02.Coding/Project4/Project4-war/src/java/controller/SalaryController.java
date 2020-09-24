/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.TblSalary;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import model.SalaryEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
    @RequestMapping(value = "/createsalary", method = RequestMethod.GET)
    public String showcreate(ModelMap mm, HttpServletRequest request) {
        mm.put("salary", new SalaryEntity());
        mm.put("salarys", tblSalaryFacade.findAll() );
       return "salary/create.jsp";
    }

    @RequestMapping(value = "/editsalary/{id}", method = RequestMethod.GET)
   public String showedit(ModelMap mm, @PathVariable(value = "id") int id) {
        mm.put("salary", tblSalaryFacade.find(id));
        return "salary/edit.jsp";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute(value = "salary")TblSalary salary) {
        tblSalaryFacade.create(salary);
        return "redirect:/file/salary/viewall";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(@ModelAttribute(value = "salary") TblSalary salary) {
        tblSalaryFacade.edit(salary);
        return "redirect:/file/salary/viewall";
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
